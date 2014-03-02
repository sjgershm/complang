function make_roi_masks
    
    V = spm_vol('/Users/sam1/Documents/MATLAB/imaging/spm8/toolbox/WFU_PickAtlas_3.0.4/wfu_pickatlas/MNI_atlas_templates/aal_MNI_V4.nii');
    Y = spm_read_vols(V);
    V2 = V;
    
    for i = 1:116
        disp(num2str(i));
        M = Y==i;
        V.fname = ['mask',num2str(i),'.nii'];
        spm_write_vol(V2,M);
    end