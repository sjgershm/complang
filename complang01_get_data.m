function data = complang01_get_data(EXPT,model,subj)
    
    % Get complang fmri data.
    %
    % USAGE: data = complang01_get_data(EXPT,model,subj)
    
    S = EXPT.subject(subj);
    [B names] = complang01_events(EXPT,model,subj);
    
    V = spm_vol(fullfile(EXPT.analysis_dir,S.name,['model',num2str(model)],'mask.img'));
    mask = spm_read_vols(V); mask = mask~=0;
    data.mask = mask;
    
    for i = 1:length(B)
        disp(num2str(i));
        for j = 1:length(B{i})
            fname = sprintf('beta_%3.4d.img',B{i}(j));
            V = spm_vol(fullfile(EXPT.analysis_dir,S.name,['model',num2str(model)],fname));
            Y = spm_read_vols(V);
            Y = Y(mask);
            data.Y{i}(j,:) = Y(:);
        end
    end
    
    data.B = B;
    data.names = names;
    
    save(fullfile(EXPT.analysis_dir,S.name,['model',num2str(model)],'data'),'data');