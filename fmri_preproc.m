function fmri_preproc(EXPT,subj,tasks)
    
    % Preprocess fMRI data.
    %
    % USAGE: fmri_preproc(EXPT,subj,[tasks])
    %
    % INPUTS:
    %   EXPT - experiment structure
    %   subj - subject number
    %   tasks (optional) - if one of the following strings, it will perform
    %                      the specified preprocessing step:
    %                       'dicom_convert' - convert dicoms to nifti
    %                       'realign' - motion correction
    %                       'coregister' - image coregistration
    %                       'normalize' - warp anatomical to template
    %                       'smooth' - smooth images with gaussian kernel
    %                       'all' - all of the above (in order)
    %                      if tasks is a cell array, it will do the
    %                      specified tasks in sequence. By default, tasks = 'all'
    %
    % OUTPUTS:
    %   Dicom conversion writes nifti files to 'nii' directory.
    %   Realignment and coregistration induce changes in the headers of the
    %   nifti files. Normalization writes out new files with 'w' prefix.
    %   Smoothing writes out new files with 's' prefix.
    %
    % Sam Gershman, Jan 2014
    
    
    if nargin < 3 || isempty(tasks); tasks = 'all'; end
    
    if iscell(tasks)
        for i = 1:length(tasks)
            fmri_preproc(EXPT,subj,tasks{i});
        end
        return
    end
    
    switch tasks
        case 'all'
            % Do everything
            tasks = {'dicom_convert' 'realign' 'coregister' 'normalize' 'smooth'};
            fmri_preproc(EXPT,subj,tasks);
            return
            
        case 'dicom_convert'
            % Convert dicom files to nifti.
            
            disp('Converting dicoms to nifti...');
            
            dicomdir = fullfile(EXPT.data_dir,EXPT.subject(subj).name,'dicom');
            niftidir = fullfile(EXPT.data_dir,EXPT.subject(subj).name,'nii');
            files = dir(fullfile(dicomdir,'*.dcm'));
            files = dir2char(files,dicomdir);
            hdr = spm_dicom_headers(files);
            curdir = pwd;
            if ~isdir(niftidir); mkdir(niftidir); end
            cd(niftidir);
            spm_dicom_convert(hdr,'all','flat','nii');
            cd(curdir);
        
        case 'realign'
            % This step does motion correction. Only a mean image is
            % resliced; all other images have their headers modified.
            
            disp('Realigning...')
            
            for r = 1:length(EXPT.functional)
                files{r,1} = fmri_get(EXPT,subj,['*-',num2str(EXPT.subject(subj).functional(r)),'-*']);
            end
            
            % if we want this session to be aligned to a "source" session
            if ~isempty(EXPT.subject(subj).source)
                mean_source = fmri_get(EXPT,EXPT.subject(subj).source,'mean*');
                files = [mean_source; files];
            end
            
            spm_realign(files);
            spm_reslice(files,struct('mean',1,'which',0));  % write mean image
            
            % move the movement parameter files to analysis directory
            rp = fmri_get(EXPT,subj,'rp_*');
            E = fullfile(EXPT.analysis_dir,EXPT.subject(subj),'movement');
            if ~isdir(E); mkdir(E); end
            for j = 1:size(rp,1)
                movefile(rp(j,:),E);
            end

        case 'coregister'
            % This step first coregisters the mean functional to the
            % anatomical, and then coregisters the anatomical to the
            % MNI template.
            
            disp('Coregistration...')
            
            % 1) mean functional -> anatomical
            % use normalied mutual information for registering images from
            % different modalities (epi -> T1)
            mean_epi = fmri_get(EXPT,subj,'mean*');
            anatomical = fmri_get(EXPT,subj,['*-',num2str(EXPT.subject(subj).anatomical),'-*']);
            T1 = spm_coreg(anatomical,mean_epi,struct('cost_fun','nmi','graphics',0));
            for r = 1:length(EXPT.subject(subj).functional)
                P{r,1} = fmri_get(EXPT,subj,['*-',num2str(EXPT.subject(subj).functional(r)),'-*']);
            end
            P = [P; mean_epi];
            coreg_apply(P,T1);   % transform all other functionals
            
            % 2) anatomical -> MNI template
            % use normalied cross-correlation for registering images from
            % the same modality (T1 -> T1)
            template = which('T1.nii');
            T2 = spm_coreg(template,anatomical,struct('cost_fun','ncc','graphics',0));
            P = [P; anatomical];
            coreg_apply(P,T2);   % transform all other functionals and anatomical
            
            % save coregistration parameters
            adir = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name);
            if ~isdir(adir); mkdir(adir); end
            save(fullfile(adir,'coreg_params'),'T1','T2');
            
        case 'normalize'
            % Segment and normalize anatomical image to MNI template.
            
            disp('Normalizing anatomical...')
            
            anatomical = fmri_get(EXPT,subj,['*-',num2str(EXPT.subject(subj).anatomical),'-*']);
            res = spm_preproc(anatomical);  % compute warping parameters
            sn = spm_prep2sn(res);
            spm_write_sn(anatomical,sn);     % normalize anatomical using the warp parameters already calculated
            for r = 1:length(EXPT.subject(subj).functional)
                P = fmri_get(EXPT,subj,['*-',num2str(EXPT.subject(subj).functional(r)),'-*']);
                spm_write_sn(P,sn);          % normalize functionals
            end
            
            adir = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name);
            if ~isdir(adir); mkdir(adir); end
            save(fullfile(adir,'normalization_params'),'sn');
            
        case 'smooth'
            % Smooth images with Gaussian kernel (width specified in EXPT.fwhm).
            
            disp('Smoothing..');
            
            for r = 1:length(EXPT.subject(subj).functional)
                P = fmri_get(EXPT,subj,['w*-',num2str(EXPT.subject(subj).functional(r)),'-*']);
                for j = 1:size(P,1)
                    [pth,nam,ext,num] = spm_fileparts(P(j,:));
                    u = fullfile(pth,['s' nam ext num]);    % preprend 's' to filenames
                    spm_smooth(P(j,:),u,EXPT.fwhm);
                end
            end
    end