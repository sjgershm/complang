function [r C] = complang_ridge(X,Y,rank)
    
    %X = bsxfun(@rdivide,X,std(X,[],2));
    %X = zscore(X,[],2);
    X = add_intercept(X);
    
    N = 150;
    lambda = 1;
    
    ix = rank(1:5000);
    W = train_ridge(X(1:N,:),Y(1:N,ix),lambda);
    C = distance_matrix(X((N+1):end,:)*W,Y((N+1):end,ix),'cosine');
    r = rank_accuracy(C);