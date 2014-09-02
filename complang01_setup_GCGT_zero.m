function EXPT = complang01_setup
    
    % Collect information about the experiment into EXPT structure.
    %
    % USAGE: EXPT = complang01_setup
    
    % general info
    EXPT.TR = 2;        % repetition time
    EXPT.fwhm = 4;      % full-width half maximum for smoothing
    EXPT.analysis_dir = '/mindhive/nklab/projects/MACKEREL/analysis01';
    EXPT.data_dir = '/mindhive/nklab/projects/MACKEREL/data01';
    
    addpath(genpath('/mindhive/nklab/projects/compositionality_lang/scripts/spm8'));
    addpath('/mindhive/nklab/projects/MACKEREL/complang');
    addpath('/mindhive/nklab/projects/MACKEREL/fmri');
    
    %----------------------------------%
    %           SUBJECT 1              
    %----------------------------------%
    EXPT.subject(1).name = 'subj01';
    
    dicomdir1 = fullfile(EXPT.data_dir,'subj01','dicoms');
    niftidir1 = fullfile(EXPT.data_dir,'subj01','nii');
    dicomdir2 = fullfile(EXPT.data_dir,'subj01b','dicoms');
    niftidir2 = fullfile(EXPT.data_dir,'subj01b','nii');
    paradir1 = fullfile(EXPT.data_dir,'subj01','onsets');
    paradir2 = fullfile(EXPT.data_dir,'subj01b','onsets');
    
    EXPT.subject(1).anatomical.run = 5;
    EXPT.subject(1).anatomical.dicomdir = dicomdir1;
    EXPT.subject(1).anatomical.niftidir = niftidir1;
    
    EXPT.subject(1).functional(1).run = 9;
    EXPT.subject(1).functional(1).name = 'TargetWords1';
    EXPT.subject(1).functional(1).dicomdir = dicomdir1;
    EXPT.subject(1).functional(1).niftidir = niftidir1;
    EXPT.subject(1).functional(1).para{4} = fullfile(paradir1,'subj01_09_GCGT.para');
    
    EXPT.subject(1).functional(2).run = 11;
    EXPT.subject(1).functional(2).name = 'TargetWords2';
    EXPT.subject(1).functional(2).dicomdir = dicomdir1;
    EXPT.subject(1).functional(2).niftidir = niftidir1;
    EXPT.subject(1).functional(2).para{4} = fullfile(paradir1,'subj01_11_GCGT.para');
    
    EXPT.subject(1).functional(3).run = 13;
    EXPT.subject(1).functional(3).name = 'TargetWords3';
    EXPT.subject(1).functional(3).dicomdir = dicomdir1;
    EXPT.subject(1).functional(3).niftidir = niftidir1;
    EXPT.subject(1).functional(3).para{4} = fullfile(paradir1,'subj01_13_GCGT.para');
    
    EXPT.subject(1).functional(4).run = 15;
    EXPT.subject(1).functional(4).name = 'DyLoc1';
    EXPT.subject(1).functional(4).dicomdir = dicomdir1;
    EXPT.subject(1).functional(4).niftidir = niftidir1;
    EXPT.subject(1).functional(4).para{4} = fullfile(paradir1,'subj01_15_DyLoc1.para');
    
    EXPT.subject(1).functional(5).run = 17;
    EXPT.subject(1).functional(5).name = 'DyLoc2';
    EXPT.subject(1).functional(5).dicomdir = dicomdir1;
    EXPT.subject(1).functional(5).niftidir = niftidir1;
    EXPT.subject(1).functional(5).para{4} = fullfile(paradir1,'subj01_17_DyLoc2.para');
    
    EXPT.subject(1).functional(6).run = 19;
    EXPT.subject(1).functional(6).name = 'TargetWords4';
    EXPT.subject(1).functional(6).dicomdir = dicomdir1;
    EXPT.subject(1).functional(6).niftidir = niftidir1;
    EXPT.subject(1).functional(6).para{4} = fullfile(paradir1,'subj01_19_GCGT.para');
    
    EXPT.subject(1).functional(7).run = 21;
    EXPT.subject(1).functional(7).name = 'TargetWords5';
    EXPT.subject(1).functional(7).dicomdir = dicomdir1;
    EXPT.subject(1).functional(7).niftidir = niftidir1;
    EXPT.subject(1).functional(7).para{4} = fullfile(paradir1,'subj01_21_GCGT.para');
    
    EXPT.subject(1).functional(8).run = 23;
    EXPT.subject(1).functional(8).name = 'TargetWords6';
    EXPT.subject(1).functional(8).dicomdir = dicomdir1;
    EXPT.subject(1).functional(8).niftidir = niftidir1;
    EXPT.subject(1).functional(8).para{4} = fullfile(paradir1,'subj01_23_GCGT.para');
    
    EXPT.subject(1).functional(9).run = 25;
    EXPT.subject(1).functional(9).name = 'DyLoc3';
    EXPT.subject(1).functional(9).dicomdir = dicomdir1;
    EXPT.subject(1).functional(9).niftidir = niftidir1;
    EXPT.subject(1).functional(9).para{4} = fullfile(paradir1,'subj01_25_DyLoc3.para');
    
    EXPT.subject(1).functional(10).run = 27;
    EXPT.subject(1).functional(10).name = 'DyLoc4';
    EXPT.subject(1).functional(10).dicomdir = dicomdir1;
    EXPT.subject(1).functional(10).niftidir = niftidir1;
    EXPT.subject(1).functional(10).para{4} = fullfile(paradir1,'subj01_27_DyLoc4.para');
    
    EXPT.subject(1).functional(11).run = 29;
    EXPT.subject(1).functional(11).name = 'Snippets1';
    EXPT.subject(1).functional(11).dicomdir = dicomdir1;
    EXPT.subject(1).functional(11).niftidir = niftidir1;
    EXPT.subject(1).functional(11).para{4} = [];
    
    EXPT.subject(1).functional(12).run = 31;
    EXPT.subject(1).functional(12).name = 'Snippets2';
    EXPT.subject(1).functional(12).dicomdir = dicomdir1;
    EXPT.subject(1).functional(12).niftidir = niftidir1;
    EXPT.subject(1).functional(12).para{4} = [];
    
    EXPT.subject(1).functional(13).run = 8;
    EXPT.subject(1).functional(13).name = 'Constrained1';
    EXPT.subject(1).functional(13).dicomdir = dicomdir2;
    EXPT.subject(1).functional(13).niftidir = niftidir2;
    EXPT.subject(1).functional(13).para{4} = fullfile(paradir2,'subj01b_08_GCGT.para');
    
    EXPT.subject(1).functional(14).run = 10;
    EXPT.subject(1).functional(14).name = 'Diverse1';
    EXPT.subject(1).functional(14).dicomdir = dicomdir2;
    EXPT.subject(1).functional(14).niftidir = niftidir2;
    EXPT.subject(1).functional(14).para{4} = fullfile(paradir2,'subj01b_10_GCGT.para');
    
    EXPT.subject(1).functional(15).run = 14;
    EXPT.subject(1).functional(15).name = 'Diverse2';
    EXPT.subject(1).functional(15).dicomdir = dicomdir2;
    EXPT.subject(1).functional(15).niftidir = niftidir2;
    EXPT.subject(1).functional(15).para{4} = fullfile(paradir2,'subj01b_14_GCGT.para');
    
    EXPT.subject(1).functional(16).run = 16;
    EXPT.subject(1).functional(16).name = 'Constrained2';
    EXPT.subject(1).functional(16).dicomdir = dicomdir2;
    EXPT.subject(1).functional(16).niftidir = niftidir2;
    EXPT.subject(1).functional(16).para{4} = fullfile(paradir2,'subj01b_16_GCGT.para');
    
    EXPT.subject(1).functional(17).run = 25;
    EXPT.subject(1).functional(17).name = 'Constrained3';
    EXPT.subject(1).functional(17).dicomdir = dicomdir2;
    EXPT.subject(1).functional(17).niftidir = niftidir2;
    EXPT.subject(1).functional(17).para{4} = fullfile(paradir2,'subj01b_25_GCGT.para');
    
    EXPT.subject(1).functional(18).run = 27;
    EXPT.subject(1).functional(18).name = 'Diverse3';
    EXPT.subject(1).functional(18).dicomdir = dicomdir2;
    EXPT.subject(1).functional(18).niftidir = niftidir2;
    EXPT.subject(1).functional(18).para{4} = fullfile(paradir2,'subj01b_27_GCGT.para');
    
    EXPT.subject(1).functional(19).run = 31;
    EXPT.subject(1).functional(19).name = 'Diverse4';
    EXPT.subject(1).functional(19).dicomdir = dicomdir2;
    EXPT.subject(1).functional(19).niftidir = niftidir2;
    EXPT.subject(1).functional(19).para{4} = fullfile(paradir2,'subj01b_31_GCGT.para');
    
    EXPT.subject(1).functional(20).run = 33;
    EXPT.subject(1).functional(20).name = 'Constrained';
    EXPT.subject(1).functional(20).dicomdir = dicomdir2;
    EXPT.subject(1).functional(20).niftidir = niftidir2;
    EXPT.subject(1).functional(20).para{4} = fullfile(paradir2,'subj01b_33_GCGT.para');
    
    %----------------------------------%
    %           SUBJECT 2              
    %----------------------------------%
    EXPT.subject(2).name = 'subj02';
    
    dicomdir1 = fullfile(EXPT.data_dir,'subj02','dicoms');
    niftidir1 = fullfile(EXPT.data_dir,'subj02','nii');
    dicomdir2 = fullfile(EXPT.data_dir,'subj02b','dicoms');
    niftidir2 = fullfile(EXPT.data_dir,'subj02b','nii');
    paradir1 = fullfile(EXPT.data_dir,'subj02','onsets');
    paradir2 = fullfile(EXPT.data_dir,'subj02b','onsets');
    
    EXPT.subject(2).anatomical.run = 4;
    EXPT.subject(2).anatomical.dicomdir = fullfile(EXPT.data_dir,'subj02','dicoms_anatomical');
    EXPT.subject(2).anatomical.niftidir = fullfile(EXPT.data_dir,'subj02','nii_anatomical');
    
    EXPT.subject(2).functional(1).run = 5;
    EXPT.subject(2).functional(1).name = 'LangLoc1';
    EXPT.subject(2).functional(1).dicomdir = dicomdir1;
    EXPT.subject(2).functional(1).niftidir = niftidir1;
    EXPT.subject(2).functional(1).para{4} = fullfile(paradir1,'subj02_05_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(2).functional(2).run = 9;
    EXPT.subject(2).functional(2).name = 'LangLoc2';
    EXPT.subject(2).functional(2).dicomdir = dicomdir1;
    EXPT.subject(2).functional(2).niftidir = niftidir1;
    EXPT.subject(2).functional(2).para{4} = fullfile(paradir1,'subj02_09_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(2).functional(3).run = 11;
    EXPT.subject(2).functional(3).name = 'TargetWords1';
    EXPT.subject(2).functional(3).dicomdir = dicomdir1;
    EXPT.subject(2).functional(3).niftidir = niftidir1;
    EXPT.subject(2).functional(3).para{4} = fullfile(paradir1,'subj02_11_GCGT.para');
    
    EXPT.subject(2).functional(4).run = 13;
    EXPT.subject(2).functional(4).name = 'TargetWords2';
    EXPT.subject(2).functional(4).dicomdir = dicomdir1;
    EXPT.subject(2).functional(4).niftidir = niftidir1;
    EXPT.subject(2).functional(4).para{4} = fullfile(paradir1,'subj02_13_GCGT.para');
    
    EXPT.subject(2).functional(5).run = 15;
    EXPT.subject(2).functional(5).name = 'DyLoc1';
    EXPT.subject(2).functional(5).dicomdir = dicomdir1;
    EXPT.subject(2).functional(5).niftidir = niftidir1;
    EXPT.subject(2).functional(5).para{4} = fullfile(paradir1,'subj02_15_DyLoc1.para');
    
    EXPT.subject(2).functional(6).run = 17;
    EXPT.subject(2).functional(6).name = 'DyLoc2';
    EXPT.subject(2).functional(6).dicomdir = dicomdir1;
    EXPT.subject(2).functional(6).niftidir = niftidir1;
    EXPT.subject(2).functional(6).para{4} = fullfile(paradir1,'subj02_17_DyLoc2.para');
    
    EXPT.subject(2).functional(7).run = 19;
    EXPT.subject(2).functional(7).name = 'TargetWords3';
    EXPT.subject(2).functional(7).dicomdir = dicomdir1;
    EXPT.subject(2).functional(7).niftidir = niftidir1;
    EXPT.subject(2).functional(7).para{4} = fullfile(paradir1,'subj02_19_GCGT.para');
    
    EXPT.subject(2).functional(8).run = 21;
    EXPT.subject(2).functional(8).name = 'TargetWords4';
    EXPT.subject(2).functional(8).dicomdir = dicomdir1;
    EXPT.subject(2).functional(8).niftidir = niftidir1;
    EXPT.subject(2).functional(8).para{4} = fullfile(paradir1,'subj02_21_GCGT.para');
    
    EXPT.subject(2).functional(9).run = 23;
    EXPT.subject(2).functional(9).name = 'TargetWords5';
    EXPT.subject(2).functional(9).dicomdir = dicomdir1;
    EXPT.subject(2).functional(9).niftidir = niftidir1;
    EXPT.subject(2).functional(9).para{4} = fullfile(paradir1,'subj02_23_GCGT.para');
    
    EXPT.subject(2).functional(10).run = 25;
    EXPT.subject(2).functional(10).name = 'TargetWords6';
    EXPT.subject(2).functional(10).dicomdir = dicomdir1;
    EXPT.subject(2).functional(10).niftidir = niftidir1;
    EXPT.subject(2).functional(10).para{4} = fullfile(paradir1,'subj02_25_GCGT.para');
    
    EXPT.subject(2).functional(11).run = 27;
    EXPT.subject(2).functional(11).name = 'DyLoc3';
    EXPT.subject(2).functional(11).dicomdir = dicomdir1;
    EXPT.subject(2).functional(11).niftidir = niftidir1;
    EXPT.subject(2).functional(11).para{4} = fullfile(paradir1,'subj02_27_DyLoc3.para');
    
    EXPT.subject(2).functional(12).run = 4;
    EXPT.subject(2).functional(12).name = 'Constrained1';
    EXPT.subject(2).functional(12).dicomdir = dicomdir2;
    EXPT.subject(2).functional(12).niftidir = niftidir2;
    EXPT.subject(2).functional(12).para{4} = fullfile(paradir2,'subj02b_04_GCGT.para');
    
    EXPT.subject(2).functional(13).run = 6;
    EXPT.subject(2).functional(13).name = 'Diverse1';
    EXPT.subject(2).functional(13).dicomdir = dicomdir2;
    EXPT.subject(2).functional(13).niftidir = niftidir2;
    EXPT.subject(2).functional(13).para{4} = fullfile(paradir2,'subj02b_06_GCGT.para');
    
    EXPT.subject(2).functional(14).run = 8;
    EXPT.subject(2).functional(14).name = 'Constrained2';
    EXPT.subject(2).functional(14).dicomdir = dicomdir2;
    EXPT.subject(2).functional(14).niftidir = niftidir2;
    EXPT.subject(2).functional(14).para{4} = fullfile(paradir2,'subj02b_08_GCGT.para');
    
    EXPT.subject(2).functional(15).run = 10;
    EXPT.subject(2).functional(15).name = 'Diverse2';
    EXPT.subject(2).functional(15).dicomdir = dicomdir2;
    EXPT.subject(2).functional(15).niftidir = niftidir2;
    EXPT.subject(2).functional(15).para{4} = fullfile(paradir2,'subj02b_10_GCGT.para');
    
    EXPT.subject(2).functional(16).run = 14;
    EXPT.subject(2).functional(16).name = 'Constrained3';
    EXPT.subject(2).functional(16).dicomdir = dicomdir2;
    EXPT.subject(2).functional(16).niftidir = niftidir2;
    EXPT.subject(2).functional(16).para{4} = fullfile(paradir2,'subj02b_14_GCGT.para');
    
    EXPT.subject(2).functional(17).run = 16;
    EXPT.subject(2).functional(17).name = 'Diverse3';
    EXPT.subject(2).functional(17).dicomdir = dicomdir2;
    EXPT.subject(2).functional(17).niftidir = niftidir2;
    EXPT.subject(2).functional(17).para{4} = fullfile(paradir2,'subj02b_16_GCGT.para');
    
    EXPT.subject(2).functional(18).run = 18;
    EXPT.subject(2).functional(18).name = 'Constrained4';
    EXPT.subject(2).functional(18).dicomdir = dicomdir2;
    EXPT.subject(2).functional(18).niftidir = niftidir2;
    EXPT.subject(2).functional(18).para{4} = fullfile(paradir2,'subj02b_18_GCGT.para');
    
    EXPT.subject(2).functional(19).run = 20;
    EXPT.subject(2).functional(19).name = 'Diverse4';
    EXPT.subject(2).functional(19).dicomdir = dicomdir2;
    EXPT.subject(2).functional(19).niftidir = niftidir2;
    EXPT.subject(2).functional(19).para{4} = fullfile(paradir2,'subj02b_20_GCGT.para');
    
    %----------------------------------%
    %           SUBJECT 3              
    %----------------------------------%
    EXPT.subject(3).name = 'subj03';
    
    dicomdir1 = fullfile(EXPT.data_dir,'subj03','dicoms');
    niftidir1 = fullfile(EXPT.data_dir,'subj03','nii');
    dicomdir2 = fullfile(EXPT.data_dir,'subj03b','dicoms');
    niftidir2 = fullfile(EXPT.data_dir,'subj03b','nii');
    paradir1 = fullfile(EXPT.data_dir,'subj03','onsets');
    paradir2 = fullfile(EXPT.data_dir,'subj03b','onsets');
    
    EXPT.subject(3).anatomical.run = 4;
    EXPT.subject(3).anatomical.dicomdir = dicomdir1;
    EXPT.subject(3).anatomical.niftidir = niftidir1;
    
    EXPT.subject(3).functional(1).run = 6;
    EXPT.subject(3).functional(1).name = 'TargetWords1';
    EXPT.subject(3).functional(1).dicomdir = dicomdir1;
    EXPT.subject(3).functional(1).niftidir = niftidir1;
    EXPT.subject(3).functional(1).para{4} = fullfile(paradir1,'subj03_06_GCGT.para');
    
    EXPT.subject(3).functional(2).run = 8;
    EXPT.subject(3).functional(2).name = 'TargetWords2';
    EXPT.subject(3).functional(2).dicomdir = dicomdir1;
    EXPT.subject(3).functional(2).niftidir = niftidir1;
    EXPT.subject(3).functional(2).para{4} = fullfile(paradir1,'subj03_08_GCGT.para');
    
    EXPT.subject(3).functional(3).run = 10;
    EXPT.subject(3).functional(3).name = 'TargetWords3';
    EXPT.subject(3).functional(3).dicomdir = dicomdir1;
    EXPT.subject(3).functional(3).niftidir = niftidir1;
    EXPT.subject(3).functional(3).para{4} = fullfile(paradir1,'subj03_10_GCGT.para');
    
    EXPT.subject(3).functional(4).run = 12;
    EXPT.subject(3).functional(4).name = 'Dyloc1';
    EXPT.subject(3).functional(4).dicomdir = dicomdir1;
    EXPT.subject(3).functional(4).niftidir = niftidir1;
    EXPT.subject(3).functional(4).para{4} = fullfile(paradir1,'subj03_12_DyLoc1.para');
    
    EXPT.subject(3).functional(5).run = 14;
    EXPT.subject(3).functional(5).name = 'DyLoc2';
    EXPT.subject(3).functional(5).dicomdir = dicomdir1;
    EXPT.subject(3).functional(5).niftidir = niftidir1;
    EXPT.subject(3).functional(5).para{4} = fullfile(paradir1,'subj03_14_DyLoc2.para');
    
    EXPT.subject(3).functional(6).run = 16;
    EXPT.subject(3).functional(6).name = 'TargetWords4';
    EXPT.subject(3).functional(6).dicomdir = dicomdir1;
    EXPT.subject(3).functional(6).niftidir = niftidir1;
    EXPT.subject(3).functional(6).para{4} = fullfile(paradir1,'subj03_16_GCGT.para');
    
    EXPT.subject(3).functional(7).run = 18;
    EXPT.subject(3).functional(7).name = 'TargetWords5';
    EXPT.subject(3).functional(7).dicomdir = dicomdir1;
    EXPT.subject(3).functional(7).niftidir = niftidir1;
    EXPT.subject(3).functional(7).para{4} = fullfile(paradir1,'subj03_18_GCGT.para');
    
    EXPT.subject(3).functional(8).run = 20;
    EXPT.subject(3).functional(8).name = 'TargetWords6';
    EXPT.subject(3).functional(8).dicomdir = dicomdir1;
    EXPT.subject(3).functional(8).niftidir = niftidir1;
    EXPT.subject(3).functional(8).para{4} = fullfile(paradir1,'subj03_20_GCGT.para');
    
    EXPT.subject(3).functional(9).run = 22;
    EXPT.subject(3).functional(9).name = 'DyLoc3';
    EXPT.subject(3).functional(9).dicomdir = dicomdir1;
    EXPT.subject(3).functional(9).niftidir = niftidir1;
    EXPT.subject(3).functional(9).para{4} = fullfile(paradir1,'subj03_22_DyLoc3.para');
    
    EXPT.subject(3).functional(10).run = 24;
    EXPT.subject(3).functional(10).name = 'DyLoc4';
    EXPT.subject(3).functional(10).dicomdir = dicomdir1;
    EXPT.subject(3).functional(10).niftidir = niftidir1;
    EXPT.subject(3).functional(10).para{4} = fullfile(paradir1,'subj03_24_DyLoc4.para');
    
    EXPT.subject(3).functional(11).run = 4;
    EXPT.subject(3).functional(11).name = 'Constrained1';
    EXPT.subject(3).functional(11).dicomdir = dicomdir2;
    EXPT.subject(3).functional(11).niftidir = niftidir2;
    EXPT.subject(3).functional(11).para{4} = fullfile(paradir2,'subj03b_04_GCGT.para');
    
    EXPT.subject(3).functional(12).run = 6;
    EXPT.subject(3).functional(12).name = 'Diverse1';
    EXPT.subject(3).functional(12).dicomdir = dicomdir2;
    EXPT.subject(3).functional(12).niftidir = niftidir2;
    EXPT.subject(3).functional(12).para{4} = fullfile(paradir2,'subj03b_06_GCGT.para');
    
    EXPT.subject(3).functional(13).run = 8;
    EXPT.subject(3).functional(13).name = 'Constrained2';
    EXPT.subject(3).functional(13).dicomdir = dicomdir2;
    EXPT.subject(3).functional(13).niftidir = niftidir2;
    EXPT.subject(3).functional(13).para{4} = fullfile(paradir2,'subj03b_08_GCGT.para');
    
    EXPT.subject(3).functional(14).run = 10;
    EXPT.subject(3).functional(14).name = 'Diverse2';
    EXPT.subject(3).functional(14).dicomdir = dicomdir2;
    EXPT.subject(3).functional(14).niftidir = niftidir2;
    EXPT.subject(3).functional(14).para{4} = fullfile(paradir2,'subj03b_10_GCGT.para');
    
    EXPT.subject(3).functional(15).run = 12;
    EXPT.subject(3).functional(15).name = 'LangLoc1';
    EXPT.subject(3).functional(15).dicomdir = dicomdir2;
    EXPT.subject(3).functional(15).niftidir = niftidir2;
    EXPT.subject(3).functional(15).para{4} = fullfile(paradir2,'subj03b_12_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(3).functional(16).run = 14;
    EXPT.subject(3).functional(16).name = 'LangLoc2';
    EXPT.subject(3).functional(16).dicomdir = dicomdir2;
    EXPT.subject(3).functional(16).niftidir = niftidir2;
    EXPT.subject(3).functional(16).para{4} = fullfile(paradir2,'subj03b_14_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(3).functional(17).run = 16;
    EXPT.subject(3).functional(17).name = 'Constrained3';
    EXPT.subject(3).functional(17).dicomdir = dicomdir2;
    EXPT.subject(3).functional(17).niftidir = niftidir2;
    EXPT.subject(3).functional(17).para{4} = fullfile(paradir2,'subj03b_16_GCGT.para');
    
    EXPT.subject(3).functional(18).run = 18;
    EXPT.subject(3).functional(18).name = 'Diverse3';
    EXPT.subject(3).functional(18).dicomdir = dicomdir2;
    EXPT.subject(3).functional(18).niftidir = niftidir2;
    EXPT.subject(3).functional(18).para{4} = fullfile(paradir2,'subj03b_18_GCGT.para');
    
    EXPT.subject(3).functional(19).run = 20;
    EXPT.subject(3).functional(19).name = 'Constrained4';
    EXPT.subject(3).functional(19).dicomdir = dicomdir2;
    EXPT.subject(3).functional(19).niftidir = niftidir2;
    EXPT.subject(3).functional(19).para{4} = fullfile(paradir2,'subj03b_20_GCGT.para');
    
    EXPT.subject(3).functional(20).run = 22;
    EXPT.subject(3).functional(20).name = 'Diverse4';
    EXPT.subject(3).functional(20).dicomdir = dicomdir2;
    EXPT.subject(3).functional(20).niftidir = niftidir2;
    EXPT.subject(3).functional(20).para{4} = fullfile(paradir2,'subj03b_22_GCGT.para');
    
    %----------------------------------%
    %           SUBJECT 4             
    %----------------------------------%
    EXPT.subject(4).name = 'subj04';
    
    dicomdir1 = fullfile(EXPT.data_dir,'subj04','dicoms');
    niftidir1 = fullfile(EXPT.data_dir,'subj04','nii');
    dicomdir2 = fullfile(EXPT.data_dir,'subj04b','dicoms');
    niftidir2 = fullfile(EXPT.data_dir,'subj04b','nii');
    paradir1 = fullfile(EXPT.data_dir,'subj04','onsets');
    paradir2 = fullfile(EXPT.data_dir,'subj04b','onsets');
    
    EXPT.subject(4).anatomical.run = 4;
    EXPT.subject(4).anatomical.dicomdir = dicomdir1;
    EXPT.subject(4).anatomical.niftidir = niftidir1;
    
    EXPT.subject(4).functional(1).run = 8;
    EXPT.subject(4).functional(1).name = 'TargetWords1';
    EXPT.subject(4).functional(1).dicomdir = dicomdir1;
    EXPT.subject(4).functional(1).niftidir = niftidir1;
    EXPT.subject(4).functional(1).para{4} = fullfile(paradir1,'subj04_08_GCGT.para');
    
    EXPT.subject(4).functional(2).run = 10;
    EXPT.subject(4).functional(2).name = 'TargetWords2';
    EXPT.subject(4).functional(2).dicomdir = dicomdir1;
    EXPT.subject(4).functional(2).niftidir = niftidir1;
    EXPT.subject(4).functional(2).para{4} = fullfile(paradir1,'subj04_10_GCGT.para');
    
    EXPT.subject(4).functional(3).run = 12;
    EXPT.subject(4).functional(3).name = 'TargetWords3';
    EXPT.subject(4).functional(3).dicomdir = dicomdir1;
    EXPT.subject(4).functional(3).niftidir = niftidir1;
    EXPT.subject(4).functional(3).para{4} = fullfile(paradir1,'subj04_12_GCGT.para');
    
    EXPT.subject(4).functional(4).run = 16;
    EXPT.subject(4).functional(4).name = 'Dyloc1';
    EXPT.subject(4).functional(4).dicomdir = dicomdir1;
    EXPT.subject(4).functional(4).niftidir = niftidir1;
    EXPT.subject(4).functional(4).para{4} = fullfile(paradir1,'subj04_16_DyLoc1.para');
    
    EXPT.subject(4).functional(5).run = 18;
    EXPT.subject(4).functional(5).name = 'TargetWords4';
    EXPT.subject(4).functional(5).dicomdir = dicomdir1;
    EXPT.subject(4).functional(5).niftidir = niftidir1;
    EXPT.subject(4).functional(5).para{4} = fullfile(paradir1,'subj04_18_GCGT.para');
    
    EXPT.subject(4).functional(6).run = 20;
    EXPT.subject(4).functional(6).name = 'TargetWords5';
    EXPT.subject(4).functional(6).dicomdir = dicomdir1;
    EXPT.subject(4).functional(6).niftidir = niftidir1;
    EXPT.subject(4).functional(6).para{4} = fullfile(paradir1,'subj04_20_GCGT.para');
    
    EXPT.subject(4).functional(7).run = 22;
    EXPT.subject(4).functional(7).name = 'TargetWords6';
    EXPT.subject(4).functional(7).dicomdir = dicomdir1;
    EXPT.subject(4).functional(7).niftidir = niftidir1;
    EXPT.subject(4).functional(7).para{4} = fullfile(paradir1,'subj04_22_GCGT.para');
    
    EXPT.subject(4).functional(8).run = 6;
    EXPT.subject(4).functional(8).name = 'Constrained1';
    EXPT.subject(4).functional(8).dicomdir = dicomdir2;
    EXPT.subject(4).functional(8).niftidir = niftidir2;
    EXPT.subject(4).functional(8).para{4} = fullfile(paradir2,'subj04b_06_GCGT.para');
    
    EXPT.subject(4).functional(9).run = 8;
    EXPT.subject(4).functional(9).name = 'Diverse1';
    EXPT.subject(4).functional(9).dicomdir = dicomdir2;
    EXPT.subject(4).functional(9).niftidir = niftidir2;
    EXPT.subject(4).functional(9).para{4} = fullfile(paradir2,'subj04b_08_GCGT.para');
    
    EXPT.subject(4).functional(10).run = 10;
    EXPT.subject(4).functional(10).name = 'Constrained2';
    EXPT.subject(4).functional(10).dicomdir = dicomdir2;
    EXPT.subject(4).functional(10).niftidir = niftidir2;
    EXPT.subject(4).functional(10).para{4} = fullfile(paradir2,'subj04b_10_GCGT.para');
    
    EXPT.subject(4).functional(11).run = 12;
    EXPT.subject(4).functional(11).name = 'Diverse2';
    EXPT.subject(4).functional(11).dicomdir = dicomdir2;
    EXPT.subject(4).functional(11).niftidir = niftidir2;
    EXPT.subject(4).functional(11).para{4} = fullfile(paradir2,'subj04b_12_GCGT.para');
    
    EXPT.subject(4).functional(12).run = 14;
    EXPT.subject(4).functional(12).name = 'LangLoc1';
    EXPT.subject(4).functional(12).dicomdir = dicomdir2;
    EXPT.subject(4).functional(12).niftidir = niftidir2;
    EXPT.subject(4).functional(12).para{4} = fullfile(paradir2,'subj04b_14_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(4).functional(13).run = 16;
    EXPT.subject(4).functional(13).name = 'LangLoc2';
    EXPT.subject(4).functional(13).dicomdir = dicomdir2;
    EXPT.subject(4).functional(13).niftidir = niftidir2;
    EXPT.subject(4).functional(13).para{4} = fullfile(paradir2,'subj04b_16_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(4).functional(14).run = 18;
    EXPT.subject(4).functional(14).name = 'Constrained3';
    EXPT.subject(4).functional(14).dicomdir = dicomdir2;
    EXPT.subject(4).functional(14).niftidir = niftidir2;
    EXPT.subject(4).functional(14).para{4} = fullfile(paradir2,'subj04b_18_GCGT.para');
    
    EXPT.subject(4).functional(15).run = 20;
    EXPT.subject(4).functional(15).name = 'Diverse3';
    EXPT.subject(4).functional(15).dicomdir = dicomdir2;
    EXPT.subject(4).functional(15).niftidir = niftidir2;
    EXPT.subject(4).functional(15).para{4} = fullfile(paradir2,'subj04b_20_GCGT.para');
    
    EXPT.subject(4).functional(16).run = 22;
    EXPT.subject(4).functional(16).name = 'Constrained4';
    EXPT.subject(4).functional(16).dicomdir = dicomdir2;
    EXPT.subject(4).functional(16).niftidir = niftidir2;
    EXPT.subject(4).functional(16).para{4} = fullfile(paradir2,'subj04b_22_GCGT.para');
    
    EXPT.subject(4).functional(17).run = 24;
    EXPT.subject(4).functional(17).name = 'Diverse4';
    EXPT.subject(4).functional(17).dicomdir = dicomdir2;
    EXPT.subject(4).functional(17).niftidir = niftidir2;
    EXPT.subject(4).functional(17).para{4} = fullfile(paradir2,'subj04b_24_GCGT.para');