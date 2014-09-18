% INPUTS:
%   SPM:    SPM structure for a subject
%   name:   name of contrast
% 
% 2014-09-18 updated to work with new analysis dir organization (Walid)
% 2014-09-15 Initial function (Walid)

function complang02_make_langloc_roi(EXPT,model,subj)
    names={'S','N'};
    [beta, mask] = fmri_load_beta(EXPT,model,subj,names);
    [~,p] = ttest2(beta{1},beta{2}); 
	cdir=cd;
	if ~exist(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'localizers'),'dir'); mkdir(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'localizers')); end
	cd(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'localizers'));
    save('S-N','p','beta');
	cd(cdir);
   
% Write to spm structure
%{ 
    Ic=length(SPM.xCon)+1;    
    for i=1:length(SPM.xCon)
        if isequal(name,SPM.xCon(i).name)
            response = input('S-N exists, overwrite it? (y/n)','s');
            Ic=i;
            %if ~strcmp(response,'y'); return; end
            if ~isequal('y',response)
                return;
            end
        end
    end 
    c=find_regressors(SPM.xX.name,'S')-find_regressors(SPM.xX.name,'N');
    sX = SPM.xX.xKXs;
    Fc = spm_FcUtil('Set',name, 'T', 'c', c', sX);
    SPM.xCon(Ic)=Fc;
    [SPM] = spm_contrasts(SPM,Ic);
%}
end