function [x y ix] = complang01_load_data(subj)
    
    switch subj
        
        case 1
            load('/Users/sam1/Documents/lab_stuff/kanwisher/complang01/subj01/data.mat')
            y = cell2mat(data.Y');
            load('/Users/sam1/Dropbox/Compositional Semantics/complang01/word_vectors.mat')
            x = []; N = size(X,1); ix = [];
            for i = 1:N
                n = size(data.Y{i},1);
                x = [x; repmat(X(i,:),n,1)];
                ix = [ix; repmat(i,n,1)];
            end
            
            load('/Users/sam1/Dropbox/Compositional Semantics/complang01/sentence_vectors.mat')
            for i = 1:size(X,1)
                n = size(data.Y{i+N},1);
                x = [x; repmat(X(i,:),n,1)];
                ix = [ix; repmat(i+N,n,1)];
            end
            
%             load('/Users/sam1/Documents/lab_stuff/kanwisher/complang01/subj01/data.mat')
%             load('/Users/sam1/Dropbox/Compositional Semantics/complang01/word_vectors.mat')
%             x = X;
%             for i = 1:size(X,1)
%                 y(i,:) = mean(data.Y{i},1);
%             end
%             
%             load('/Users/sam1/Dropbox/Compositional Semantics/complang01/sentence_vectors.mat')
%             x = [x; X];
%             for i = 1:size(X,1)
%                 y(i+25,:) = mean(data.Y{i+25},1);
%             end
            
    end