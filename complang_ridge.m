function results = complang_ridge(X,Y,rank,K,train,test,classes)
    
    if nargin < 4 || isempty(K); K = 0; end
    if nargin < 5 || isempty(train); train = 1:150; end
    if nargin < 6 || isempty(test); test = 151:size(X,1); end
    if nargin < 7 || isempty(classes); classes = test; end
    
    lambda = [0.01 0.1 1 10];
    D = [10 100 500 1000 5000 10000];
    nperm = 1000;
    
    if K > 0
        pc = pca(X(train,:));
        X = X*pc(:,1:K);
    end
    
    X = add_intercept(X);
    N = length(classes);
    results.r = zeros(N,length(lambda),length(D));
    results.rp = zeros(N,length(lambda),length(D),nperm);
    results.c = zeros(N,length(lambda),length(D));
    results.cp = zeros(N,length(lambda),length(D),nperm);
    
    for i = 1:length(lambda)
        for j = 1:length(D)
            ix = rank(1:D(j));
            W = train_ridge(X(train,:),Y(train,ix),lambda(i));
            C = distance_matrix(X(test,:)*W,Y(classes,ix),'correlation');
            results.r(:,i,j) = rank_accuracy(C);
            c = 1-diag(C);
            results.c(:,i,j) = c;
            for t = 1:nperm
                ii = randperm(N);
                results.rp(:,i,j,t) = rank_accuracy(C(:,ii));
                results.cp(:,i,j,t) = c(ii);
            end
            
            % decode semantic vector and then compute distance 
            %Z = train_ridge(W',Y(classes,ix)',0.00001);
            %C = distance_matrix(X(test,:),Z','correlation');
            %results.r(:,i,j) = rank_accuracy(C);
            % absolute accuracy
            %[~,k] = min(C,[],2); 
            %results.r(:,i,j) = mean(k'==1:size(C,2));
        end
    end
    
    results.lambda = lambda;
    results.D = D;
    results.K = K;
    results.C = C;