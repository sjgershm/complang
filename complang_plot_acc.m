function complang_plot_acc(r)
    
    K = {'25' '50' '75' 'all'};
    lambda = [0.01 0.1 1 10];
    for j = 1:length(lambda)
        L{j} = ['\lambda = ',num2str(lambda(j))];
    end
    
    figure;
    D = [10 100 500 1000 5000 10000];
    for j = 1:length(D); d{j} = num2str(D(j)); end
    
    for k = 1:length(K)
        subplot(2,2,k)
        g = r{k};
        if ndims(r{k})==4; g = squeeze(mean(g,2)); end
        m = squeeze(mean(g));
        se = squeeze(std(g))./sqrt(size(g,1));
        se = se*1.96;
        errorbar(m',se','-o','LineWidth',3,'MarkerSize',10,'MarkerFaceColor','w');
        title(['PCA = ',K{k}],'FontSize',25,'FontWeight','Bold');
        if k == 1
            legend(L,'FontSize',20,'Location','North');
        end
        set(gca,'FontSize',20,'XTick',1:length(D),'XTickLabel',d,'XLim',[0 length(D)+1],'YLim',[0.4 0.7]);
        xlabel('Number of voxels','FontSize',25);
        ylabel('Rank accuracy','FontSize',25);
        hold on; plot(get(gca,'XLim'),[0.5 0.5],'--k','LineWidth',3);
        %hold on; plot(get(gca,'XLim'),[1/25 1/25],'--k','LineWidth',3);
    end