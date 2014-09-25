% INPUTS:
%   EXPT:    EXPT file
%   model:   model number
%   subj:    subject number
% 
% 2014-09-24 Initial function (Walid)

function complang02_get_betas_words(EXPT,model,subj,type)
    if nargin<4
        type='ALL';
    end
    load('words.mat');
    switch type
        case 'ALL'
            names=all';
        case 'IARPA'
            names=iarpa';
        case 'STIM'
            names=stim';
    end
    
    [beta, mask] = fmri_load_beta(EXPT,model,subj,names);
    [~,p] = ttest2(beta{1},beta{2}); 
	cdir=cd;
	if ~exist(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas'),'dir'); mkdir(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas')); end
	cd(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas'));
    save(['wordBetas_' type],'p','beta');
	cd(cdir);
end