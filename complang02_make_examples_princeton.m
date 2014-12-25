% INPUTS:
%   EXPT:    EXPT file
%   model:   model number
%   subj:    subject number
% 
% 2014-09-26 Makes examples and multimasks from beta images for stimwords and sentences
%

function complang02_make_examples_princeton(EXPT,model,subj,site,data_dir,analysis_dir)

    if nargin == 3; site = 'PU'; end

    % hack to bypass use of actual EXPT structure
    switch site
      case {'MIT'}
        EXPT = [];
        EXPT.TR = 2;
        EXPT.fwhm = 4;
        %EXPT.analysis_dir = '/Volumes/Store/Datasets/MIT/analysis_standalone';
        %EXPT.data_dir     = '/Volumes/Store/Datasets/MIT/data_standalone';
        if nargin == 6
            EXPT.analysis_dir = analysis_dir;
            EXPT.data_dir     = data_dir;
        else
            EXPT.analysis_dir = '/Volumes/Store/Datasets/MIT/analysis02';
            EXPT.data_dir     = '/Volumes/Store/Datasets/MIT/data02';
        end
        EXPT.subject(subj).name = sprintf('subj%1.2d',subj);
        S = EXPT.subject(subj);
      case {'PU'}
        % all good
    end
%
% load betas produced with complang02_get_betas_princeton.m
%
    
% in complang, has 200 words (stimwords) and 240 sentences (sentences)
    load('stimulus_names.mat');
    beta = [];

    if 1
        % load betas for stimwords - #betas x #voxels in mask
        switch site
          case {'PU'}
            %inputFile = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas','stimwordsBetas.mat');
            inputFile = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas','wordBetas_STIMWORDS.mat');            
          case {'MIT'}
            % hack for now
            %sdir = sprintf('subj%1.2d',subj);
            %inputFile = fullfile('/Volumes/Store/Datasets/MIT','analysis_standalone',sdir,'betas','wordBetas_STIMWORDS.mat');
            inputFile = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas','wordBetas_STIMWORDS.mat');            
        end

        load(inputFile); % gets us beta, mask and name
        betas_stimwords = beta; mask_stimwords = mask; clear beta;            
        if ~(isequal(names',stimwords) | isequal(names,stimwords))
            for iw = 1:200; fprintf('%s\t%s\t%d\n',names{iw},stimwords{iw},isequal(names{iw},stimwords{iw}));end
            fprintf('error: beta file does not contain stimwords!\n');return;
        else
            fprintf('loaded beta for words\n');
        end
            
        % load betas for sentences - #betas x #voxels in mask
        switch site
          case {'PU'}
            %inputFile = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas','sentencesBetas.mat');
            inputFile = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas','sentenceBetas_STIMSENTENCES.mat');
          case {'MIT'}
            % hack for now
            %sdir = sprintf('subj%1.2d',subj);
            %inputFile = fullfile('/Volumes/Store/Datasets/MIT','analysis_standalone',sdir,'betas','sentenceBetas_STIMSENTENCES.mat');
            inputFile = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas','sentenceBetas_STIMSENTENCES.mat');            
        end
            
        load(inputFile); % gets us beta, mask and name
        betas_sentences = beta; mask_sentences = mask;
        
        if ~(isequal(names',sentences) | isequal(names,sentences))
            for iw = 1:240; fprintf('%s\t%s\t%d\n',names{iw},sentences{iw},isequal(names{iw},sentences{iw}));end
            fprintf('error: beta file does not contain sentences!\n');return;
        else
            fprintf('loaded beta for sentences\n');
        end
        
        % check the volume mask
        if ~isequal(mask_stimwords,mask_sentences)
            fprintf('error: masks for sentences and stimwords do not match!\n');return;
        else
            volmask = mask_stimwords;
        end
    else
        % debug - test loading of other things after this
        load('mask.mat');
        volmask = mask;
    end
    volmask_original = volmask;
    indicesIn3D_original = find(volmask(:));

    
    %% load the AAL atlas 
    fpath = which('atlas_aal_resized.nii');
    V = spm_vol(fpath);
    volaal = spm_read_vols(V);
    fpath = which('atlas_aal_resized.txt');
    [discard,labels_aal] = textread(fpath,'%d\t%s','delimiter','\n');

    
    %% load the language localizer group parcels
    fpath = which('langloc_parcels.nii');
    V = spm_vol(fpath);
    vollangloc = spm_read_vols(V);
    fpath = which('langloc_parcels.txt');
    [discard,labels_langloc] = textread(fpath,'%d\t%s','delimiter','\n');

    
    %% load the language localizer significance masks for this subject
    S = EXPT.subject(subj);
    M = ['model',num2str(model)];
    fpath = fullfile(EXPT.analysis_dir,S.name,'betas','S_N.mat');
    if exist(fpath,'file')
        % OK
    else
        fpath = fullfile(EXPT.analysis_dir,S.name,'betas','S-N.mat');
        if exist(fpath,'file')
            % OK
        else
            fprintf('error: cannot find S-N.mat or S_N.mat in betas\n');return;
        end
    end
    load(fpath); % gets us p, same number of values as mask

    significant_mask_0_001 = p <= 0.001;
    significant_mask_0_01  = p <= 0.01;
    
    volsig_0_001 = zeros(size(volmask));
    volsig_0_001(indicesIn3D_original) = significant_mask_0_001;
    volsig_0_01 = zeros(size(volmask));
    volsig_0_01(indicesIn3D_original) = significant_mask_0_01;
    
    %% now recalculate the subject mask (AND with AAL)
    %% and use it to remove voxels from the others
    
    volmask = volmask & (volaal > 0);
    volaal  = volaal  .* volmask;
    
    vollangloc   = vollangloc   .* volmask;
    volsig_0_001 = volsig_0_001 .* volmask;
    volsig_0_01  = volsig_0_01  .* volmask;
    
    %% create meta structure for volmask
    
    meta = createMetaFromMask(volmask);
    %meta = [];
    
    %% and create multimasks from them
    
    indicesIn3D = find(volmask(:));
    nvoxels = length(indicesIn3D);
    
    multimask_aal   = volaal(indicesIn3D);
    multimask_group = vollangloc(indicesIn3D);
    multimask_0_001 = volsig_0_001(indicesIn3D);
    multimask_0_01  = volsig_0_01(indicesIn3D);
    
    varsToSave1 = 'multimask_aal multimask_group multimask_0_01 multimask_0_001';
    varsToSave2 = 'volmask volaal vollangloc volsig_0_01 volsig_0_001 labels_aal labels_langloc volmask_original meta';

    %
    % now create examples from the betas
    %
    % will create
    % - 1 example per word - average presentation of each word
    % - 1 example per sentence - average presentation of each sentence
    % - 3 examples per sentence - individual presentations of each sentence (if 6, average 1/2,3/4,5/6)
    %
    
    % find voxels in the original mask that remain
    % (since beta images are in terms of the original mask)
    voxelsToUse = find(volmask(indicesIn3D_original)); nvoxels = length(voxelsToUse);
    
    nwords = length(stimwords);
    examples_stimwords = zeros(nwords,nvoxels);
    stimwordsPresent   = ones(nwords,1);
    
    for e = 1:nwords
        % average presentation of each word
        tmp = mean(betas_stimwords{e},1); 
        if isempty(tmp)
            stimwordsPresent(e) = 0;
        else
            examples_stimwords(e,:) = tmp(voxelsToUse);
        end
    end
    
    nsentences = length(sentences);
    examples_sentences = zeros(nsentences,nvoxels);
    sentencesPresent   = ones(nsentences,1);

    examples_sentences_individual = zeros(3*nsentences,nvoxels);
    labels_sentences_individual   = zeros(3*nsentences,1);
    groups_sentences_individual   = zeros(3*nsentences,1);
    eidx = 1;
    
    for e = 1:nsentences        
        % average presentation of each sentence
        tmp = mean(betas_sentences{e},1); 
        if isempty(tmp) 
            sentencesPresent(e) = 0;
        else
            examples_sentences(e,:) = tmp(voxelsToUse);
        end
        
        % individual presentations
        nreps = size(betas_sentences{e},1);
        erange = eidx:(eidx+2);
        
        switch nreps
          case {0}
            % no presentations, leave as vectors of 0s
          case {3}
            examples_sentences_individual(erange,:) = betas_sentences{e}(:,voxelsToUse);
          case {6}
            examples_sentences_individual(erange(1),:) = mean(betas_sentences{e}([1,2],voxelsToUse),1);
            examples_sentences_individual(erange(2),:) = mean(betas_sentences{e}([3,4],voxelsToUse),1);
            examples_sentences_individual(erange(3),:) = mean(betas_sentences{e}([5,6],voxelsToUse),1);
          otherwise
            % some missing, just replicate the average computed above
            examples_sentences_individual(erange(1),:) = examples_sentences(e,:);
            examples_sentences_individual(erange(2),:) = examples_sentences(e,:);
            examples_sentences_individual(erange(3),:) = examples_sentences(e,:);
        end
        groups_sentences_individual(erange) = [1 2 3];
        labels_sentences_individual(erange) = [e e e];
        eidx = eidx + 3;
    end
    
    %
    % finally, output the whole thing
    %
    
    %outputFile = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,mtxt,'examplesGLM.mat');
    switch site
      case {'PU'}
        outputFile = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'examplesGLM.mat');
      case {'MIT'}
        % hack for now
        %sdir = sprintf('subj%1.2d',subj);
        %outputFile = fullfile('/Volumes/Store/Datasets/MIT','analysis_standalone',sdir,'examplesGLM.mat');
        outputFile = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'examplesGLM.mat');
    end

    varsToSave3 = 'examples_stimwords examples_sentences sentences stimwords stimwordsPresent sentencesPresent examples_sentences_individual labels_sentences_individual groups_sentences_individual';
    eval(sprintf('save %s %s %s %s;',outputFile,varsToSave1,varsToSave2,varsToSave3));

    fprintf('subject %d: %d words %d sentences\n',subj,sum(stimwordsPresent),sum(sentencesPresent));
    
    
    
