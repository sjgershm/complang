function r = complang01_reliability(y,id,rank)
    
    % Comparison of correlations within and between concepts, where
    % "within" means inter-repetition correlation, and "between" means
    % correlation between presentations of different concepts.
    
    k = 1:150;
    N = length(k);
    y = y(k,:); id = id(k);
    if nargin < 3; rank = stability_selection(y); end
    D = [10 50 100 500 1000 5000 10000];
    r = zeros(N,length(D),2);

    for d = 1:length(D)
        ix = rank(1:D(d));
        R = corr(y(:,ix)',y(:,ix)');
        for i = 1:N
            same = id==id(i); same(i)=0;
            diff = id~=id(i);
            r(i,d,:) = [mean(R(i,same)) mean(R(i,diff))];
        end
    end
    
    plot(squeeze(nanmean(r)),'-o','LineWidth',4,'MarkerSize',12,'MarkerFaceColor','w')
    legend({'Within','Between'},'FontSize',25);
    for i = 1:length(D); Dn{i}=num2str(D(i)); end
    set(gca,'XTick',1:length(D),'XTickLabel',Dn,'FontSize',20,'XLim',[0 length(D)+1]);
    xlabel('# voxels','FontSize',25);
    ylabel('Correlation','FontSize',25);