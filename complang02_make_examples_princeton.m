% INPUTS:
%   EXPT:    EXPT file
%   model:   model number
%   subj:    subject number
% 
% 2014-09-26 Makes examples and multimasks from beta images for stimwords and sentences
%

function complang02_make_examples_princeton(EXPT,model,subj)

%
% load betas produced with complang02_get_betas_princeton.m
%
    
% in complang, has 200 words (stimwords) and 240 sentences (sentences)
    load('stimulus_names.mat');
    beta = [];

    if 1
        % load betas for stimwords - #betas x #voxels in mask
        inputFile = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas','stimwordsBetas.mat');
        load(inputFile); % gets us beta, mask and name
        betas_stimwords = beta; mask_stimwords = mask; clear beta;
        
        % load betas for sentences - #betas x #voxels in mask
        inputFile = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'betas','sentencesBetas.mat');
        load(inputFile); % gets us beta, mask and name
        betas_sentences = beta; mask_sentences = mask;
        
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
    fpath = fullfile(EXPT.analysis_dir,S.name,'localizers','S_N.mat');
    if exist(fpath,'file')
        % OK
    else
        fpath = fullfile(EXPT.analysis_dir,S.name,'localizers','S-N.mat');
        if exist(fpath,'file')
            % OK
        else
            fprintf('error: cannot find S-N.mat or S_N.mat in localizers\n');return;
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
    
    %% and create multimasks from them
    
    indicesIn3D = find(volmask(:));
    nvoxels = length(indicesIn3D);
    
    multimask_aal   = volaal(indicesIn3D);
    multimask_group = vollangloc(indicesIn3D);
    multimask_0_001 = volsig_0_001(indicesIn3D);
    multimask_0_01  = volsig_0_01(indicesIn3D);
    
    varsToSave1 = 'multimask_aal multimask_group multimask_0_01 multimask_0_001';
    varsToSave2 = 'volmask volaal vollangloc volsig_0_01 volsig_0_001 labels_aal labels_langloc volmask_original';
    
    %
    % now create examples from the betas
    %
    
    % find voxels in the original mask that remain
    % (since beta images are in terms of the original mask)
    voxelsToUse = find(volmask(indicesIn3D_original)); nvoxels = length(voxelsToUse);
    
    nwords = length(stimwords);
    examples_stimwords = zeros(nwords,nvoxels);
    for e = 1:nwords
        tmp = mean(betas_stimwords{e},1); 
        examples_stimwords(e,:) = tmp(voxelsToUse);
    end

    nsentences = length(sentences);
    examples_sentences = zeros(nsentences,nvoxels);
    for e = 1:nsentences
        tmp = mean(betas_sentences{e},1); 
        examples_sentences(e,:) = tmp(voxelsToUse);
    end

    %outputFile = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,mtxt,'examplesGLM.mat');
    outputFile = fullfile(EXPT.analysis_dir,EXPT.subject(subj).name,'examplesGLM.mat');
    varsToSave3 = 'examples_stimwords examples_sentences sentences stimwords';
    eval(sprintf('save %s %s %s %s;',outputFile,varsToSave1,varsToSave2,varsToSave3));
