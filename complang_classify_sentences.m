function [r, rp, c, cp] = complang_classify_sentences(subj)
    
    [x, y] = complang01_load_data(subj);
    
    K = [25 50 75 0];
    test = 151:size(x,1);
    train = 1:150;
    rank = stability_selection(y(1:150,:));
    
    for k = 1:length(K)
        disp(num2str(k));
        results = complang_ridge(x,y,rank,K(k),train,test);
        r{k} = results.r;
        for t = 1:size(results.rp,4)
            g(t,:,:) = squeeze(mean(results.rp(:,:,:,t))) > squeeze(mean(r{k}));
        end
        rp{k} = squeeze(mean(g));
        
        c{k} = results.c;
        for t = 1:size(results.cp,4)
            g(t,:,:) = squeeze(mean(results.cp(:,:,:,t))) > squeeze(mean(c{k}));
        end
        cp{k} = squeeze(mean(g));
    end