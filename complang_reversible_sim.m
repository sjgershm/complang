function m = complang_reversible_sim(EXPT,model,subj,metric)
    
    % Compute similarity structure for reversible stimuli.
    %
    % USAGE: m = complang_reversible_sim(EXPT,model,subj,[metric])
    
    if nargin < 4; metric = 'Euclidean'; end
    
    masks = complang02_langloc_roi(EXPT,model,subj);
    names = fmri_events(EXPT,model,subj,'stim_reversibles_4',0);
    beta = fmri_load_beta(EXPT,model,subj,names(3:end)');
    
    b = zeros(length(beta),size(beta{1},2));
    for i = 1:length(beta)
        b(i,:) = mean(beta{i},1);
    end
    
    u = unique(x(:,1));
    
    for i = 1:length(masks)
        D = squareform(pdist(b(:,masks{i}),metric));
        for j = 1:length(u)
            ix1 = D(:,1)==j & D(:,2)==1;
            for k = 2:5
                ix2 = D(:,1)==j & D(:,2)==k;
                m(j,k-1) = mean(ix1,ix2);
            end
        end
    end