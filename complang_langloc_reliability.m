function [m, X] = complang_langloc_reliability(EXPT,model,subj,mode,metric)
    
    if nargin < 5 || isempty(metric); metric = 'correlation'; end
    masks = complang02_langloc_roi(EXPT,model,subj);
    
    if nargin < 4 || isempty(mode); mode = 'iarpa_sentences'; end
    switch mode
        case 'iarpa_sentences'
            F = {'stim_sentencesSubsetA_1' 'stim_sentencesSubsetB_1'};
            K = 2;
        case 'targetwords'
            F = {'TargetWords1'};
            K = 5;
    end
    
    for j = 1:length(F)
        names = fmri_events(EXPT,model,subj,F{j},0);
        names(strcmp(names,'cue'))=[];
        names(strcmp(names,'target'))=[];
        beta = fmri_load_beta(EXPT,model,subj,names');
        
        m{j} = nan(length(masks),K);
        for i = 1:length(masks)
            disp(['... mask ',num2str(i)]);
            if any(masks{i})
                for k = 1:K
                    [p, X{j,i,k}] = compute_reliability(beta,masks{i},k,metric);
                    m{j}(i,k) = nanmean(p);
                end
            end
        end
    end