function [x y id data] = complang01_load_data(subj)
    
    switch subj
        
        case 1
            load('/Users/sam1/Documents/lab_stuff/kanwisher/complang01/subj01/data.mat')
            
        case 2
            load('/Users/sam1/Documents/lab_stuff/kanwisher/complang01/subj02/data.mat')
            
    end
    
    for i = 26:length(data.Y)
        data.Y{i} = mean(data.Y{i},1);
    end
    y = cell2mat(data.Y');
    
    load('/Users/sam1/Dropbox/Compositional Semantics/complang01/word_vectors.mat')
    x = []; N = size(X,1); id = [];
    for i = 1:N
        n = size(data.Y{i},1);
        x = [x; repmat(X(i,:),n,1)];
        id = [id; repmat(i,n,1)];
    end
    
    load('/Users/sam1/Dropbox/Compositional Semantics/complang01/sentence_vectors.mat')
    x = [x; X];
    id = [id; N+(1:size(X,1))'];