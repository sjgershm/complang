function [multimask,masks,volmasks,volrois,multivol] = complang02_langloc_roi_princeton(EXPT,model,subj,threshold)
    
    % Create subject-specific langloc ROI masks.
    %
    % USAGE: masks = complang02_langloc_roi(EXPT,model,subj)
    % 
    % OUTPUT (masks for each ROI):
    % - multimask - values are 1:#rois, with what survived test 
    % - masks - #rois cells with binary 1:#voxels in run 1 mask
    % - volmasks - #rois cells with binary volume masks (using combo)
        
    if nargin < 4; group = 0; end
    
    % loads matrix Y (has values 1-8) and labels L
    load langloc_parcels;
    rois = L;
    volrois = Y;
    
    % load combined and run 1 masks
    [volmask_combined,volmask_run1] = fmri_load_combined_mask(EXPT,model,subj);
    indicesIn3D_run1 = find(volmask_run1(:));
    indicesIn3D      = find(volmask_combined(:));
    
    % get the localizer p-value map
    % (p is a vector with as many entries as voxels in mask_run1)

    S = EXPT.subject(subj);
    M = ['model',num2str(model)];
    load(fullfile(EXPT.analysis_dir,S.name,'localizers','S_N.mat'));
    if nargin < 4; threshold = 0.001; end
    y = p<=threshold;
    
    volmask_significant = volmask_combined;
    volmask_significant(indicesIn3D_run1) = y;
    
    % load SPM mask
    %V = spm_vol(fullfile(EXPT.analysis_dir,S.name,M,'run1','mask.img'));
    %mask = spm_read_vols(V); mask = mask~=0;
    mask = volmask_run1; mask = mask~=0;
    Y = Y(mask);
    
    multimask = zeros(size(Y));
    multivol  = volrois .* volmask_combined;
    if threshold > 0
        multivol  = volrois .* volmask_significant;
    else
        % nope
    end
        
        
    for i = 1:8
        maskroi = (Y==i);
        masks{i} = maskroi & y';
        nsurvive = sum(masks{i});
        fprintf('%s: %d voxels survive (%d in parcel)\n',rois{i},nsurvive,sum(maskroi));
        
        if threshold > 0
            multimask = multimask + i*masks{i};
        else
            multimask = multimask + i*maskroi;
        end
            
        % use the group parcel if no voxels survive
        if nsurvive == 0 || threshold == 0
            masks{i} = maskroi;
            volmasks{i} = (volrois == i);
        else
            volmasks{i} = (volrois == i) & volmask_significant;
        end
    end