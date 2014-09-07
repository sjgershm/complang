function complang_plot_FIR(cueMat,tarMat)
    
    load langloc_parcels
    
    %f = [cell2mat(cueMat); cell2mat(tarMat)];
    %ylim = [min(f(:)) max(f(:))];
    ylim = [-6e-4 6e-4];
    
    for i = 1:length(cueMat)
        %subplot(4,2,i);
        figure;
        y(:,:,1) = cueMat{i};
        y(:,:,2) = tarMat{i};
        [~,p] = ttest(cueMat{i},tarMat{i})
        S = size(y,1);
        errorbar(squeeze(mean(y)),squeeze(std(y))./sqrt(S),'-o','LineWidth',4,'MarkerSize',10,'MarkerFaceColor','w');
        set(gca,'XTick',1:5,'XTickLabel',1.5:2:9.5,'XLim',[0 6],'FontSize',20,'YLim',ylim);
        xlabel('Time (sec)','FontSize',25);
        ylabel('beta (a.u.)','FontSize',25);
        title(L{i},'FontSize',25,'FontWeight','Bold');
        saveFigurePdf(gcf,['FIR/model4_',L{i}]); close all
    end