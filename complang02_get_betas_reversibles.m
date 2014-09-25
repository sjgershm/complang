% INPUTS:
%   EXPT:    EXPT file
%   model:   model number
%   subj:    subject number
% 
% 2014-09-24 Initial function (Walid)

function complang02_get_betas_reversibles(EXPT,model,subj)
    names={'S','N'};
    [beta, mask] = fmri_load_beta(EXPT,model,subj,names);
    [~,p] = ttest2(beta{1},beta{2}); 
	cdir=cd;
	if ~exist(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas'),'dir'); mkdir(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas')); end
	cd(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas'));
    save('reversibles','p','beta');
	cd(cdir);
   
end