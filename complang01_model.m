function para = complang01_model(EXPT,subj,model)
    
    % Return para file names for a given subject and model.
    %
    % USAGE: para = complang01_model(EXPT,subj,model)
    
    switch model
        case 1
            if subj == 1
                paradir1 = fullfile(EXPT.data_dir,'subj01','onsets');
                paradir2 = fullfile(EXPT.data_dir,'subj01b','onsets');
                para{1} = fullfile(paradir1,'subj01_09_ICGT.para');
                para{2} = fullfile(paradir1,'subj01_11_ICGT.para');
                para{3} = fullfile(paradir1,'subj01_13_ICGT.para');
                para{4} = fullfile(paradir1,'subj01_15_DyLoc1.para');
                para{5} = fullfile(paradir1,'subj01_17_DyLoc2.para');
                para{6} = fullfile(paradir1,'subj01_19_ICGT.para');
                para{7} = fullfile(paradir1,'subj01_21_ICGT.para');
                para{8} = fullfile(paradir1,'subj01_23_ICGT.para');
                para{9} = fullfile(paradir1,'subj01_25_DyLoc3.para');
                para{10} = fullfile(paradir1,'subj01_27_DyLoc2.para');
                para{11} = [];
                para{12} = [];
                para{13} = fullfile(paradir2,'subj01b_08_ICGT.para');
                para{14} = fullfile(paradir2,'subj01b_10_ICGT.para');
                para{15} = fullfile(paradir2,'subj01b_14_ICGT.para');
                para{16} = fullfile(paradir2,'subj01b_16_ICGT.para');
                para{17} = fullfile(paradir2,'subj01b_25_ICGT.para');
                para{18} = fullfile(paradir2,'subj01b_27_ICGT.para');
                para{19} = fullfile(paradir2,'subj01b_31_ICGT.para');
                para{20} = fullfile(paradir2,'subj01b_33_ICGT.para');
            end
    end