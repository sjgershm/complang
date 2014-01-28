function plot_movement(EXPT,subj)
    
    % Plot movement parameters
    %
    % USAGE: plot_movement(EXPT,subj)
    
    S = EXPT.subject(subj);
    for r = 1:length(S.functional)
        niftidir = S.functional(r).niftidir;
        run = S.functional(r).run;
        files{r,1} = fmri_get(fullfile(niftidir,sprintf('f*-%3.4d-*',run)));
        nscan(r) = length(files{r});
    end
    nscan = cumsum(nscan);
    P = spm_vol(char(files));
    
    fg=spm_figure;
    if length(P)<2, return; end;
    Params = zeros(numel(P),12);
    for i=1:numel(P)
        Params(i,:) = spm_imatrix(P(i).mat/P(1).mat);
    end
    
    % display results
    % translation and rotation over time series
    %-------------------------------------------------------------------
    spm_figure('Clear','Graphics');
    ax=axes('Position',[0.1 0.65 0.8 0.2],'Parent',fg,'Visible','off');
    set(get(ax,'Title'),'String','Image realignment','FontSize',16,'FontWeight','Bold','Visible','on');
    x     =  0.1;
    y     =  0.9;
    for i = 1:min([numel(P) 12])
        text(x,y,[sprintf('%-4.0f',i) P(i).fname],'FontSize',10,'Interpreter','none','Parent',ax);
        y = y - 0.08;
    end
    if numel(P) > 12
        text(x,y,'................ etc','FontSize',10,'Parent',ax);
    end
    
    ax=axes('Position',[0.1 0.35 0.8 0.2],'Parent',fg,'XGrid','on','YGrid','on');
    plot(Params(:,1:3),'Parent',ax)
    s = ['x translation';'y translation';'z translation'];
    %text([2 2 2], Params(2, 1:3), s, 'Fontsize',10,'Parent',ax)
    legend(ax, s, 0)
    set(get(ax,'Title'),'String','translation','FontSize',16,'FontWeight','Bold');
    set(get(ax,'Xlabel'),'String','image');
    set(get(ax,'Ylabel'),'String','mm');
    hold on;
    for i = 1:length(nscan)
        plot([nscan(i) nscan(i)],get(gca,'YLim'),'--k','Parent',ax);
    end
    
    ax=axes('Position',[0.1 0.05 0.8 0.2],'Parent',fg,'XGrid','on','YGrid','on');
    plot(Params(:,4:6)*180/pi,'Parent',ax)
    s = ['pitch';'roll ';'yaw  '];
    %text([2 2 2], Params(2, 4:6)*180/pi, s, 'Fontsize',10,'Parent',ax)
    legend(ax, s, 0)
    set(get(ax,'Title'),'String','rotation','FontSize',16,'FontWeight','Bold');
    set(get(ax,'Xlabel'),'String','image');
    set(get(ax,'Ylabel'),'String','degrees');
    hold on;
    for i = 1:length(nscan)
        plot([nscan(i) nscan(i)],get(gca,'YLim'),'--k','Parent',ax);
    end