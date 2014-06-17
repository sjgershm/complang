function m = complang_langloc_reliability(EXPT,model,subj,metric)
    
    if nargin < 4 || isempty(metric); metric = 'euclidean'; end
    masks = complang02_langloc_roi(EXPT,model,subj);
    
    F = {'stim_sentencesSubsetA_1' 'stim_sentencesSubsetB_1'};
    
    for j = 1:length(F)
        names = fmri_events(EXPT,model,subj,F{j},0);
        beta = fmri_load_beta(EXPT,model,subj,names(2:end)');
        
        K = 2;
        m{j} = nan(length(masks),K);
        for i = 1:length(masks)
            disp(['... mask ',num2str(i)]);
            if any(masks{i})
                for k = 1:K
                    p = compute_reliability(beta,masks{i},k,metric);
                    m{j}(i,k) = nanmean(p);
                end
            end
        end
    end