function para = complang01_model(EXPT,model)
    
    % Return para file names for a model.
    %
    % USAGE: para = complang01_model(EXPT,model)
    
    switch model
        case 1
            
            para{1,1} = fullfile(paradir1,'subj01_09_ICGT.para');
            para{1,2} = fullfile(paradir1,'subj01_11_ICGT.para');
            para{1,3} = fullfile(paradir1,'subj01_13_ICGT.para');
            para{1,4} = fullfile(paradir1,'subj01_15_DyLoc1.para');
            para{1,5} = fullfile(paradir1,'subj01_17_DyLoc2.para');
            para{1,6} = fullfile(paradir1,'subj01_19_ICGT.para');
            para{1,7} = fullfile(paradir1,'subj01_21_ICGT.para');
            para{1,8} = fullfile(paradir1,'subj01_23_ICGT.para');
            para{1,9} = fullfile(paradir1,'subj01_25_DyLoc3.para');
            para{1,10} = fullfile(paradir1,'subj01_27_DyLoc2.para');
            para{1,11} = [];
            para{1,12} = [];
            para{1,13} = fullfile(paradir2,'subj01b_08_ICGT.para');
            para{1,14} = fullfile(paradir2,'subj01b_10_ICGT.para');
            para{1,15} = fullfile(paradir2,'subj01b_14_ICGT.para');
            para{1,16} = fullfile(paradir2,'subj01b_16_ICGT.para');
            para{1,17} = fullfile(paradir2,'subj01b_25_ICGT.para');
            para{1,18} = fullfile(paradir2,'subj01b_27_ICGT.para');
            para{1,19} = fullfile(paradir2,'subj01b_31_ICGT.para');
            para{1,20} = fullfile(paradir2,'subj01b_33_ICGT.para');
    end