function [rank,C] = complang_crossval(beta,masks)
    
    rank = zeros(length(beta),length(masks));
    for i = 1:length(masks)
        disp(num2str(i));
        
        % collect all data
        y = []; x = [];
        V = sum(masks{i});
        J = length(beta);
        y1 = zeros(J,V); y2 = zeros(J,V);
        for j = 1:J
            q = round(size(beta{j},1)/2);
            y1(j,:) = mean(beta{j}(1:2:end,masks{i}));
            y2(j,:) = mean(beta{j}(2:2:end,masks{i}));
            %y1(j,:) = mean(beta{j}(4:10,masks{i}));
            %y2(j,:) = mean(beta{j}(11:16,masks{i}));
        end
        
        r = pdist2(y1,y2,'correlation');
        for j=1:J
            [~,k]=sort(r(j,:),'descend');
            rank(j,i)=(find(k==j))/J;
        end
        
    end