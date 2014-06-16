function m = complang_reversible_sim(EXPT,model,subj,metric)
    
    % Compute similarity structure for reversible stimuli.
    %
    % USAGE: m = complang_reversible_sim(EXPT,model,subj,[metric])
    
    if nargin < 4; metric = 'Euclidean'; end
    
    masks = complang02_langloc_roi(EXPT,model,subj);
    names = fmri_events(EXPT,model,subj,'stim_reversibles_1',1);
    beta = fmri_load_beta(EXPT,model,subj,names(3:end)');
    
    b = nan(length(beta),size(beta{1},2));
    for i = 1:length(beta)
        if ~isempty(beta{i})
            b(i,:) = nanmean(beta{i},1);
        end
    end
    
    load RevAnnotations
    u = unique(RevAnnot(:,1));
    m = nan(length(masks),length(u),4);
    
    for i = 1:length(masks)
        if any(masks{i})
            D = squareform(pdist(b(:,masks{i}),metric));
            for j = 1:length(u)
                ix1 = RevAnnot(:,1)==j & RevAnnot(:,2)==1;
                for k = 2:5
                    ix2 = RevAnnot(:,1)==j & RevAnnot(:,2)==k;
                    m(i,j,k-1) = nanmean(D(ix1,ix2));
                end
            end
        end
    end