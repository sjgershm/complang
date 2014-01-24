function files = fmri_get(EXPT,subj,filename)
    
    % Get filenames for nifti images.
    %
    % USAGE: files = fmri_get(EXPT,subj,filename)
    %
    % INPUTS:
    %   EXPT - experiment object
    %   subj - subject number
    %   filename - regular expression specifying set of file names
    %
    % OUPUTS:
    %   files - character array of file names (including full path)
    %
    % Sam Gershman, Jan 2014
    
    filedir = fullfile(EXPT.data_dir,EXPT.subject(subj).name,'nii');
    files = dir(fullfile(filedir,filename));
    files = dir2char(files,filedir);