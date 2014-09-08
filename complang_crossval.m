function rank = complang_crossval(beta,masks)
    
    rank = nan(length(beta),length(masks),2);
    for i = 1:length(masks)
        disp(num2str(i));
        
        V = sum(masks{i});
        J = length(beta);
        y1 = zeros(J,V); y2 = zeros(J,V);
        include = true(J,1);
        for j = 1:J
            if size(beta{j},1)<2; include(j)=0; end
            y1(j,:) = nanmean(beta{j}(1:2:end,masks{i}));
            y2(j,:) = nanmean(beta{j}(2:2:end,masks{i}));
        end
        
        include = find(include);
        y1 = y1(include,:); y2 = y2(include,:); J = size(y1,1);
        
        r = pdist2(y1,y2,'euclidean');
        for j = 1:J
            [~,k]=sort(r(j,:),'descend');
            rank(include(j),i,1)=(find(k==j))/J;
            [~,k]=sort(r(:,j),'descend');
            rank(include(j),i,2)=(find(k==j))/J;
        end
    end
    
    rank = squeeze(nanmean(rank,3));