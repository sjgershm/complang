function [r, rp, c, cp] = complang_classify_words(subj)
    
    [x, y] = complang01_load_data(subj);
    K = [25 50 75 0];
    
    rep = repmat(1:6,1,25);
    
    for t = 1:6
        disp(num2str(t));
        train = find(rep~=t);
        test = find(rep==t);
        rank = stability_selection(y(train,:),rep(train));
        for k = 1:length(K)
            results = complang_ridge(x,y,rank,K(k),train,test);
            r{k}(t,:,:,:) = results.r;
            
            for j = 1:size(results.rp,4)
                g(t,j,:,:) = squeeze(mean(results.rp(:,:,:,j))) > squeeze(mean(results.r));
            end
            rp{k} = squeeze(mean(g,2));
            
            c{k} = results.c;
            for j = 1:size(results.cp,4)
                g(t,j,:,:) = squeeze(mean(results.cp(:,:,:,j))) > squeeze(mean(results.c));
            end
            cp{k} = squeeze(mean(g,2));
        end
    end