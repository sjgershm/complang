function m = complang_reversible_sim(EXPT,model,subj,group)
    
    % Compute similarity structure for reversible stimuli.
    %
    % USAGE: m = complang_reversible_sim(EXPT,model,subj,[group])
    
    if nargin < 4; group = 0; end
    
    masks = complang02_langloc_roi(EXPT,model,subj,group);
    load RevCleanList
    beta = fmri_load_beta(EXPT,model,subj,RevCleanList);
    
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
            D = corr(b(:,masks{i})');
            for j = 1:length(u)
                ix1 = RevAnnot(:,1)==u(j) & RevAnnot(:,2)==1;
                for k = 2:5
                    ix2 = RevAnnot(:,1)==u(j) & RevAnnot(:,2)==k;
                    m(i,j,k-1) = nanmean(D(ix1,ix2));
                end
            end
        end
    end