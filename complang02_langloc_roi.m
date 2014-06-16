function masks = complang02_langloc_roi(EXPT,model,subj)
    
    % Create subject-specific langloc ROI masks.
    %
    % USAGE: masks = complang02_langloc_roi(EXPT,model,subj)
    
    load langloc_parcels
    
    S = EXPT.subject(subj);
    M = ['model',num2str(model)];
    V = spm_vol(fullfile(EXPT.analysis_dir,S.name,M,'S-N_001.img'));
    y = spm_read_vols(V);
    y = y>0;
    
    % load SPM mask
    V = spm_vol(fullfile(EXPT.analysis_dir,S.name,M,'mask.img'));
    mask = spm_read_vols(V); mask = mask~=0;
    
    for i = 1:8
        masks{i} = Y==i & y;
        masks{i} = masks{i}(mask);
    end