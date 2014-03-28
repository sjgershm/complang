function complang_reslice_masks(subj)
    
    F = dir('/Users/sam1/Documents/lab_stuff/kanwisher/complang01/masks/*.nii');
    for i = 1:length(F)
        P{i,1} = fullfile('/Users/sam1/Documents/lab_stuff/kanwisher/complang01/masks',F(i).name);
    end
    
    switch subj
        case 1
            fdir = '/Users/sam1/Documents/lab_stuff/kanwisher/complang01/subj01/';
            P = [fullfile(fdir,'wsKAN_complang01_01-0005-00001-000176-01.nii'); P];
        case 2
            fdir = '/Users/sam1/Documents/lab_stuff/kanwisher/complang01/subj02/';
            P = [fullfile(fdir,'wsKAN_syntaxshapes_01-0004-00001-000176-01.nii'); P];
    end
    
    spm_reslice(P);
    
    D = '/Users/sam1/Documents/lab_stuff/kanwisher/complang01/masks/';
    F = dir(fullfile(D,'r*.nii'));
    for i = 1:length(F)
        V = spm_vol(fullfile(D,F(i).name));
        V.fname = fullfile(D,F(i).name);
        V.private.dat.fname = V.fname;
        Y = spm_read_vols(V);
        spm_write_vol(V,round(Y));
    end
    
    tdir = ['/Users/sam1/Documents/lab_stuff/kanwisher/complang01/masks',num2str(subj),'/'];
    if ~exist(tdir); mkdir(tdir);  end
    movefile(fullfile('/Users/sam1/Documents/lab_stuff/kanwisher/complang01/masks','r*nii'),tdir);