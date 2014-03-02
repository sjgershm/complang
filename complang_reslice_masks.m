function complang_reslice_masks(subj)
    
    F = dir('masks/*.nii');
    for i = 1:length(F)
        P{i,1} = fullfile('masks',F(i).name);
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
    tdir = ['masks',num2str(subj),'/'];
    if ~exist(tdir); mkdir(tdir);  end
    movefile(fullfile('masks','r*nii'),tdir);