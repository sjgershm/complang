function complang_plot_rank(rank,L)
    
    for i = 1:length(L); L{i} = [L{i},' ']; end
    
    J = size(rank,1);
    m = mean(rank)';
    se = std(rank)'/sqrt(J);
    hbarerrorbar(m,se);
    set(gca,'YTickLabel',L,'FontSize',25,'XLim',[0.4 0.8],'YLim',[0.25 length(L)+0.75]);
    colormap bone
    hold on; plot([0.5 0.5],get(gca,'YLim'),'--r','LineWidth',2);
    xlabel('Rank accuracy','FontSize',25)
    
    [~,p] = ttest(rank,0.5);
    ix = p<0.05;
    T = 1:length(L);
    plot(m(ix)+se(ix)+0.02,T(ix),'*b','MarkerSize',10);
    
    set(gcf,'Position',[100 100 600 400]);