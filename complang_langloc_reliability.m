function m = complang_langloc_reliability(EXPT,model,subj)
    
    masks = complang02_langloc_roi(EXPT,model,subj);
    
    names = fmri_events(EXPT,model,subj,'stim_sentencesSubsetA_2',0);
    beta = fmri_load_beta(EXPT,model,subj,names);
    
    K = 2;
    m = zeros(length(masks),K);
    for i = 1:length(masks)
        for k = 1:K
            [~,p] = compute_reliability(beta,masks{i},k);
            m(i,k) = mean(mean(p,2)>0);
        end
    end