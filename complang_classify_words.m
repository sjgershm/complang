function r = complang_classify_words(subj)
    
    [x y] = complang01_load_data(subj);
    
    K = [25 50 75 0];
    rank = stability_selection(y(1:150,:));
    rep = repmat(1:6,1,25);
    
    for t = 1:6
        disp(num2str(t));
        train = rep~=t;
        test = rep==t;
        for k = 1:length(K)
            results = complang_ridge(x,y,rank,K(k),train,test);
            r{k}(t,:,:,:) = results.r;
        end
    end