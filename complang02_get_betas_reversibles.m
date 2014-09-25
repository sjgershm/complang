% INPUTS:
%   EXPT:    EXPT file
%   model:   model number
%   subj:    subject number
% 
% 2014-09-24 Initial function (Walid)

function complang02_get_betas_reversibles(EXPT,model,subj)
    n=strfind(EXPT.analysis_dir, '/');
    filename = fullfile(EXPT.analysis_dir(1:n(end)),'complang','reversibles.mat');
    load(filename);
    names=reversibles';
    [beta, mask] = fmri_load_beta(EXPT,model,subj,names);
	cdir=cd;
    names=names';
	if ~exist(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas'),'dir'); mkdir(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas')); end
	cd(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas'));
    save('reversiblesBetas','beta','mask','names');
	cd(cdir);
end