% INPUTS:
%   EXPT:    EXPT file
%   model:   model number
%   subj:    subject number
% 
% 2014-09-24 Initial function (Walid)

function complang02_get_betas_sentences(EXPT,model,subj,type)
    if nargin<4
        type='ALL';
    end
    n=strfind(EXPT.analysis_dir, '/');
    filename = fullfile(EXPT.analysis_dir(1:n(end)),'complang','sentences.mat');
    load(filename);
    switch type
        case 'ALL'
            names=sentences';
        case 'STIMSENTENCES'
            names=stimsentences';
    end
    [beta, mask] = fmri_load_beta(EXPT,model,subj,names);
	cdir=cd;
    names=names';
	if ~exist(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas'),'dir'); mkdir(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas')); end
	cd(fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas'));
    if isequal(type,'ALL'), save('sentenceBetas','beta','mask','names');
    else save(['sentenceBetas_' type],'beta','mask','names'); end
	cd(cdir);
end