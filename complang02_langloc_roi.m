function masks = complang02_langloc_roi(EXPT,model,subj,group)
    
    % Create subject-specific langloc ROI masks.
    %
    % USAGE: masks = complang02_langloc_roi(EXPT,model,subj)
    
    if nargin < 4; group = 0; end
    
    load langloc_parcels
    
    S = EXPT.subject(subj);
    M = ['model',num2str(model)];
    load(fullfile(EXPT.analysis_dir,S.name,'localizers','S_N.mat'));
    y = p<0.001;
    
    % load SPM mask
    V = spm_vol(fullfile(EXPT.analysis_dir,S.name,M,'run1','mask.img'));
    mask = spm_read_vols(V); mask = mask~=0;
    Y = Y(mask);
    
    for i = 1:8
        masks{i} = Y==i & y';
        
        % use the group parcel if no voxels survive
        if ~any(masks{i}) || group
            masks{i} = Y==i;
        end
    end