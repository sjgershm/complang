function EXPT = complang02_setup
    
    % Collect information about the experiment into EXPT structure.
    %
    % USAGE: EXPT = complang02_setup
    
    % general info
    EXPT.TR = 2;        % repetition time
    EXPT.fwhm = 4;      % full-width half maximum for smoothing
    EXPT.analysis_dir = '/mindhive/nklab/projects/MACKEREL/analysis02';
    EXPT.data_dir = '/mindhive/nklab/projects/MACKEREL/data02';
    
    addpath(genpath('/mindhive/nklab/projects/compositionality_lang/scripts/spm8'));
    addpath('/mindhive/nklab/projects/MACKEREL/complang');
    addpath('/mindhive/nklab/projects/MACKEREL/fmri');

    %----------------------------------%
    %           SUBJECT 1              
    %----------------------------------%
    EXPT.subject(1).name = 'subj01';
    
    dicomdir1 = fullfile(EXPT.data_dir,'subj01','dicoms');
    niftidir1 = fullfile(EXPT.data_dir,'subj01','nii');
    paradir1 = fullfile(EXPT.data_dir,'subj01','onsets');
    dicomdir2 = fullfile(EXPT.data_dir,'subj01b','dicoms');
    niftidir2 = fullfile(EXPT.data_dir,'subj01b','nii');
    paradir2 = fullfile(EXPT.data_dir,'subj01b','onsets');
    paradir3 = fullfile(EXPT.data_dir,'subj01c','onsets');
    dicomdir3 = fullfile(EXPT.data_dir,'subj01c','dicoms');
    niftidir3 = fullfile(EXPT.data_dir,'subj01c','nii');
    paradir4 = fullfile(EXPT.data_dir,'subj01d','onsets');
    dicomdir4 = fullfile(EXPT.data_dir,'subj01d','dicoms');
    niftidir4 = fullfile(EXPT.data_dir,'subj01d','nii');
    paradir5 = fullfile(EXPT.data_dir,'subj01e','onsets');
    dicomdir5 = fullfile(EXPT.data_dir,'subj01e','dicoms');
    niftidir5 = fullfile(EXPT.data_dir,'subj01e','nii');
    
    EXPT.subject(1).anatomical.run = 4;
    EXPT.subject(1).anatomical.dicomdir = dicomdir1;
    EXPT.subject(1).anatomical.niftidir = niftidir1;
    
    EXPT.subject(1).functional(1).run = 6;
    EXPT.subject(1).functional(1).name = 'S1v2W_stim1';
    EXPT.subject(1).functional(1).dicomdir = dicomdir1;
    EXPT.subject(1).functional(1).niftidir = niftidir1;
    EXPT.subject(1).functional(1).para{1} = fullfile(paradir1,'subj01_06_ICGT.para');
    
    EXPT.subject(1).functional(2).run = 8;
    EXPT.subject(1).functional(2).name = 'S1v2W_stim2';
    EXPT.subject(1).functional(2).dicomdir = dicomdir1;
    EXPT.subject(1).functional(2).niftidir = niftidir1;
    EXPT.subject(1).functional(2).para{1} = fullfile(paradir1,'subj01_08_ICGT.para');
    
    EXPT.subject(1).functional(3).run = 12;
    EXPT.subject(1).functional(3).name = 'LangLoc_1';
    EXPT.subject(1).functional(3).dicomdir = dicomdir1;
    EXPT.subject(1).functional(3).niftidir = niftidir1;
    EXPT.subject(1).functional(3).para{1} = fullfile(paradir1,'subj01_12_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(1).functional(4).run = 14;
    EXPT.subject(1).functional(4).name = 'LangLoc_2';
    EXPT.subject(1).functional(4).dicomdir = dicomdir1;
    EXPT.subject(1).functional(4).niftidir = niftidir1;
    EXPT.subject(1).functional(4).para{1} = fullfile(paradir1,'subj01_14_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(1).functional(5).run = 16;
    EXPT.subject(1).functional(5).name = 'S1v2W_stim3';
    EXPT.subject(1).functional(5).dicomdir = dicomdir1;
    EXPT.subject(1).functional(5).niftidir = niftidir1;
    EXPT.subject(1).functional(5).para{1} = fullfile(paradir1,'subj01_16_ICGT.para');
    
    EXPT.subject(1).functional(6).run = 18;
    EXPT.subject(1).functional(6).name = 'S1v2W_stim4';
    EXPT.subject(1).functional(6).dicomdir = dicomdir1;
    EXPT.subject(1).functional(6).niftidir = niftidir1;
    EXPT.subject(1).functional(6).para{1} = fullfile(paradir1,'subj01_18_ICGT.para');
    
    EXPT.subject(1).functional(7).run = 5;
    EXPT.subject(1).functional(7).name = 'stim_words1';
    EXPT.subject(1).functional(7).dicomdir = dicomdir2;
    EXPT.subject(1).functional(7).niftidir = niftidir2;
    EXPT.subject(1).functional(7).para{1} = fullfile(paradir2,'subj01b_05_ICGT.para');
    
    EXPT.subject(1).functional(8).run = 7;
    EXPT.subject(1).functional(8).name = 'stim_words2';
    EXPT.subject(1).functional(8).dicomdir = dicomdir2;
    EXPT.subject(1).functional(8).niftidir = niftidir2;
    EXPT.subject(1).functional(8).para{1} = fullfile(paradir2,'subj01b_07_ICGT.para');
    
    EXPT.subject(1).functional(9).run = 9;
    EXPT.subject(1).functional(9).name = 'stim_words3';
    EXPT.subject(1).functional(9).dicomdir = dicomdir2;
    EXPT.subject(1).functional(9).niftidir = niftidir2;
    EXPT.subject(1).functional(9).para{1} = fullfile(paradir2,'subj01b_09_ICGT.para');
    
    EXPT.subject(1).functional(10).run = 11;
    EXPT.subject(1).functional(10).name = 'stim_words4';
    EXPT.subject(1).functional(10).dicomdir = dicomdir2;
    EXPT.subject(1).functional(10).niftidir = niftidir2;
    EXPT.subject(1).functional(10).para{1} = fullfile(paradir2,'subj01b_11_ICGT.para');
    
    EXPT.subject(1).functional(11).run = 13;
    EXPT.subject(1).functional(11).name = 'stim_words5';
    EXPT.subject(1).functional(11).dicomdir = dicomdir2;
    EXPT.subject(1).functional(11).niftidir = niftidir2;
    EXPT.subject(1).functional(11).para{1} = fullfile(paradir2,'subj01b_13_ICGT.para');
    
    EXPT.subject(1).functional(12).run = 15;
    EXPT.subject(1).functional(12).name = 'stim_words6';
    EXPT.subject(1).functional(12).dicomdir = dicomdir2;
    EXPT.subject(1).functional(12).niftidir = niftidir2;
    EXPT.subject(1).functional(12).para{1} = fullfile(paradir2,'subj01b_15_ICGT.para');
    
    EXPT.subject(1).functional(13).run = 17;
    EXPT.subject(1).functional(13).name = 'stim_words7';
    EXPT.subject(1).functional(13).dicomdir = dicomdir2;
    EXPT.subject(1).functional(13).niftidir = niftidir2;
    EXPT.subject(1).functional(13).para{1} = fullfile(paradir2,'subj01b_17_ICGT.para');
    
    EXPT.subject(1).functional(14).run = 19;
    EXPT.subject(1).functional(14).name = 'stim_words8';
    EXPT.subject(1).functional(14).dicomdir = dicomdir2;
    EXPT.subject(1).functional(14).niftidir = niftidir2;
    EXPT.subject(1).functional(14).para{1} = fullfile(paradir2,'subj01b_19_ICGT.para');
    
    EXPT.subject(1).functional(15).run = 4;
    EXPT.subject(1).functional(15).name = 'stim_sentencesSubsetA_3';
    EXPT.subject(1).functional(15).dicomdir = dicomdir3;
    EXPT.subject(1).functional(15).niftidir = niftidir3;
    EXPT.subject(1).functional(15).para{1} = fullfile(paradir3,'subj01c_04_ICGT.para');
    
    EXPT.subject(1).functional(16).run = 6;
    EXPT.subject(1).functional(16).name = 'stim_reversibles_1';
    EXPT.subject(1).functional(16).dicomdir = dicomdir3;
    EXPT.subject(1).functional(16).niftidir = niftidir3;
    EXPT.subject(1).functional(16).para{1} = fullfile(paradir3,'subj01c_06_ICGT.para');
    
    EXPT.subject(1).functional(17).run = 8;
    EXPT.subject(1).functional(17).name = 'stim_reversibles_2';
    EXPT.subject(1).functional(17).dicomdir = dicomdir3;
    EXPT.subject(1).functional(17).niftidir = niftidir3;
    EXPT.subject(1).functional(17).para{1} = fullfile(paradir3,'subj01c_08_ICGT.para');
    
    EXPT.subject(1).functional(18).run = 10;
    EXPT.subject(1).functional(18).name = 'stim_reversibles_3';
    EXPT.subject(1).functional(18).dicomdir = dicomdir3;
    EXPT.subject(1).functional(18).niftidir = niftidir3;
    EXPT.subject(1).functional(18).para{1} = fullfile(paradir3,'subj01c_10_ICGT.para');
    
    EXPT.subject(1).functional(19).run = 12;
    EXPT.subject(1).functional(19).name = 'stim_reversibles_4';
    EXPT.subject(1).functional(19).dicomdir = dicomdir3;
    EXPT.subject(1).functional(19).niftidir = niftidir3;
    EXPT.subject(1).functional(19).para{1} = fullfile(paradir3,'subj01c_12_ICGT.para');
    
    EXPT.subject(1).functional(20).run = 14;
    EXPT.subject(1).functional(20).name = 'stim_reversibles_5';
    EXPT.subject(1).functional(20).dicomdir = dicomdir3;
    EXPT.subject(1).functional(20).niftidir = niftidir3;
    EXPT.subject(1).functional(20).para{1} = fullfile(paradir3,'subj01c_14_ICGT.para');
    
    EXPT.subject(1).functional(21).run = 16;
    EXPT.subject(1).functional(21).name = 'stim_reversibles_6';
    EXPT.subject(1).functional(21).dicomdir = dicomdir3;
    EXPT.subject(1).functional(21).niftidir = niftidir3;
    EXPT.subject(1).functional(21).para{1} = fullfile(paradir3,'subj01c_16_ICGT.para');
    
    EXPT.subject(1).functional(22).run = 18;
    EXPT.subject(1).functional(22).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(1).functional(22).dicomdir = dicomdir3;
    EXPT.subject(1).functional(22).niftidir = niftidir3;
    EXPT.subject(1).functional(22).para{1} = fullfile(paradir3,'subj01c_18_ICGT.para');
    
    EXPT.subject(1).functional(23).run = 20;
    EXPT.subject(1).functional(23).name = 'stim_sentencesSubsetB_2';
    EXPT.subject(1).functional(23).dicomdir = dicomdir3;
    EXPT.subject(1).functional(23).niftidir = niftidir3;
    EXPT.subject(1).functional(23).para{1} = fullfile(paradir3,'subj01c_20_ICGT.para');
    
    EXPT.subject(1).functional(24).run = 4;
    EXPT.subject(1).functional(24).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(1).functional(24).dicomdir = dicomdir4;
    EXPT.subject(1).functional(24).niftidir = niftidir4;
    EXPT.subject(1).functional(24).para{1} = fullfile(paradir4,'subj01d_04_ICGT.para');
    
    EXPT.subject(1).functional(25).run = 6;
    EXPT.subject(1).functional(25).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(1).functional(25).dicomdir = dicomdir4;
    EXPT.subject(1).functional(25).niftidir = niftidir4;
    EXPT.subject(1).functional(25).para{1} = fullfile(paradir4,'subj01d_06_ICGT.para');
    
    EXPT.subject(1).functional(26).run = 8;
    EXPT.subject(1).functional(26).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(1).functional(26).dicomdir = dicomdir4;
    EXPT.subject(1).functional(26).niftidir = niftidir4;
    EXPT.subject(1).functional(26).para{1} = fullfile(paradir4,'subj01d_08_ICGT.para');
    
    EXPT.subject(1).functional(27).run = 10;
    EXPT.subject(1).functional(27).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(1).functional(27).dicomdir = dicomdir4;
    EXPT.subject(1).functional(27).niftidir = niftidir4;
    EXPT.subject(1).functional(27).para{1} = fullfile(paradir4,'subj01d_10_ICGT.para');
    
    EXPT.subject(1).functional(28).run = 12;
    EXPT.subject(1).functional(28).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(1).functional(28).dicomdir = dicomdir4;
    EXPT.subject(1).functional(28).niftidir = niftidir4;
    EXPT.subject(1).functional(28).para{1} = fullfile(paradir4,'subj01d_12_ICGT.para');
    
    EXPT.subject(1).functional(29).run = 14;
    EXPT.subject(1).functional(29).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(1).functional(29).dicomdir = dicomdir4;
    EXPT.subject(1).functional(29).niftidir = niftidir4;
    EXPT.subject(1).functional(29).para{1} = fullfile(paradir4,'subj01d_14_ICGT.para');
        
    EXPT.subject(1).functional(30).run = 6;
    EXPT.subject(1).functional(30).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(1).functional(30).dicomdir = dicomdir5;
    EXPT.subject(1).functional(30).niftidir = niftidir5;
    EXPT.subject(1).functional(30).para{1} = fullfile(paradir5,'subj01e_06_ICGT.para');
    
    EXPT.subject(1).functional(31).run = 8;
    EXPT.subject(1).functional(31).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(1).functional(31).dicomdir = dicomdir5;
    EXPT.subject(1).functional(31).niftidir = niftidir5;
    EXPT.subject(1).functional(31).para{1} = fullfile(paradir5,'subj01e_08_ICGT.para');
    
    EXPT.subject(1).functional(32).run = 10;
    EXPT.subject(1).functional(32).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(1).functional(32).dicomdir = dicomdir5;
    EXPT.subject(1).functional(32).niftidir = niftidir5;
    EXPT.subject(1).functional(32).para{1} = fullfile(paradir5,'subj01e_10_ICGT.para');
    
    EXPT.subject(1).functional(33).run = 12;
    EXPT.subject(1).functional(33).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(1).functional(33).dicomdir = dicomdir5;
    EXPT.subject(1).functional(33).niftidir = niftidir5;
    EXPT.subject(1).functional(33).para{1} = fullfile(paradir5,'subj01e_12_ICGT.para');
    
    %----------------------------------%
    %           SUBJECT 2              
    %----------------------------------%
    EXPT.subject(2).name = 'subj02';
    
    dicomdir1 = fullfile(EXPT.data_dir,'subj02','dicoms');
    niftidir1 = fullfile(EXPT.data_dir,'subj02','nii');
    paradir1 = fullfile(EXPT.data_dir,'subj02','onsets');
    dicomdir2 = fullfile(EXPT.data_dir,'subj02b','dicoms');
    niftidir2 = fullfile(EXPT.data_dir,'subj02b','nii');
    paradir2 = fullfile(EXPT.data_dir,'subj02b','onsets');
    dicomdir3 = fullfile(EXPT.data_dir,'subj02c','dicoms');
    niftidir3 = fullfile(EXPT.data_dir,'subj02c','nii');
    paradir3 = fullfile(EXPT.data_dir,'subj02c','onsets');
    
    EXPT.subject(2).anatomical.run = 4;
    EXPT.subject(2).anatomical.dicomdir = fullfile(EXPT.data_dir,'subj02','dicoms');
    EXPT.subject(2).anatomical.niftidir = fullfile(EXPT.data_dir,'subj02','nii');
    
    EXPT.subject(2).functional(1).run = 6;
    EXPT.subject(2).functional(1).name = 'stim_words1';
    EXPT.subject(2).functional(1).dicomdir = dicomdir1;
    EXPT.subject(2).functional(1).niftidir = niftidir1;
    EXPT.subject(2).functional(1).para{1} = fullfile(paradir1,'subj02_06_ICGT.para');
    
    EXPT.subject(2).functional(2).run = 8;
    EXPT.subject(2).functional(2).name = 'stim_words2';
    EXPT.subject(2).functional(2).dicomdir = dicomdir1;
    EXPT.subject(2).functional(2).niftidir = niftidir1;
    EXPT.subject(2).functional(2).para{1} = fullfile(paradir1,'subj02_08_ICGT.para');
    
    EXPT.subject(2).functional(3).run = 10;
    EXPT.subject(2).functional(3).name = 'stim_words3';
    EXPT.subject(2).functional(3).dicomdir = dicomdir1;
    EXPT.subject(2).functional(3).niftidir = niftidir1;
    EXPT.subject(2).functional(3).para{1} = fullfile(paradir1,'subj02_10_ICGT.para');
    
    EXPT.subject(2).functional(4).run = 12;
    EXPT.subject(2).functional(4).name = 'LangLoc_1';
    EXPT.subject(2).functional(4).dicomdir = dicomdir1;
    EXPT.subject(2).functional(4).niftidir = niftidir1;
    EXPT.subject(2).functional(4).para{1} = fullfile(paradir1,'subj02_12_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(2).functional(5).run = 14;
    EXPT.subject(2).functional(5).name = 'LangLoc_2';
    EXPT.subject(2).functional(5).dicomdir = dicomdir1;
    EXPT.subject(2).functional(5).niftidir = niftidir1;
    EXPT.subject(2).functional(5).para{1} = fullfile(paradir1,'subj02_14_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(2).functional(6).run = 16;
    EXPT.subject(2).functional(6).name = 'stim_words4';
    EXPT.subject(2).functional(6).dicomdir = dicomdir1;
    EXPT.subject(2).functional(6).niftidir = niftidir1;
    EXPT.subject(2).functional(6).para{1} = fullfile(paradir1,'subj02_16_ICGT.para');
    
    EXPT.subject(2).functional(7).run = 18;
    EXPT.subject(2).functional(7).name = 'stim_words5';
    EXPT.subject(2).functional(7).dicomdir = dicomdir1;
    EXPT.subject(2).functional(7).niftidir = niftidir1;
    EXPT.subject(2).functional(7).para{1} = fullfile(paradir1,'subj02_18_ICGT.para');
    
    EXPT.subject(2).functional(8).run = 20;
    EXPT.subject(2).functional(8).name = 'stim_words6';
    EXPT.subject(2).functional(8).dicomdir = dicomdir1;
    EXPT.subject(2).functional(8).niftidir = niftidir1;
    EXPT.subject(2).functional(8).para{1} = fullfile(paradir1,'subj02_20_ICGT.para');
    
    EXPT.subject(2).functional(9).run = 22;
    EXPT.subject(2).functional(9).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(2).functional(9).dicomdir = dicomdir1;
    EXPT.subject(2).functional(9).niftidir = niftidir1;
    EXPT.subject(2).functional(9).para{1} = fullfile(paradir1,'subj02_22_ICGT.para');
    
    EXPT.subject(2).functional(10).run = 24;
    EXPT.subject(2).functional(10).name = 'stim_sentencesSubsetA_2';
    EXPT.subject(2).functional(10).dicomdir = dicomdir1;
    EXPT.subject(2).functional(10).niftidir = niftidir1;
    EXPT.subject(2).functional(10).para{1} = fullfile(paradir1,'subj02_24_ICGT.para');
    
    EXPT.subject(2).functional(11).run = 6;
    EXPT.subject(2).functional(11).name = 'stim_sentencesSubsetA_3';
    EXPT.subject(2).functional(11).dicomdir = dicomdir2;
    EXPT.subject(2).functional(11).niftidir = niftidir2;
    EXPT.subject(2).functional(11).para{1} = fullfile(paradir2,'subj02b_06_ICGT.para');
    
    EXPT.subject(2).functional(12).run = 8;
    EXPT.subject(2).functional(12).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(2).functional(12).dicomdir = dicomdir2;
    EXPT.subject(2).functional(12).niftidir = niftidir2;
    EXPT.subject(2).functional(12).para{1} = fullfile(paradir2,'subj02b_08_ICGT.para');
    
    EXPT.subject(2).functional(13).run = 10;
    EXPT.subject(2).functional(13).name = 'stim_words7';
    EXPT.subject(2).functional(13).dicomdir = dicomdir2;
    EXPT.subject(2).functional(13).niftidir = niftidir2;
    EXPT.subject(2).functional(13).para{1} = fullfile(paradir2,'subj02b_10_ICGT.para');
    
    EXPT.subject(2).functional(14).run = 12;
    EXPT.subject(2).functional(14).name = 'stim_sentencesSubsetB_2';
    EXPT.subject(2).functional(14).dicomdir = dicomdir2;
    EXPT.subject(2).functional(14).niftidir = niftidir2;
    EXPT.subject(2).functional(14).para{1} = fullfile(paradir2,'subj02b_12_ICGT.para');
    
    EXPT.subject(2).functional(15).run = 14;
    EXPT.subject(2).functional(15).name = 'stim_words8';
    EXPT.subject(2).functional(15).dicomdir = dicomdir2;
    EXPT.subject(2).functional(15).niftidir = niftidir2;
    EXPT.subject(2).functional(15).para{1} = fullfile(paradir2,'subj02b_14_ICGT.para');
    
    EXPT.subject(2).functional(16).run = 16;
    EXPT.subject(2).functional(16).name = 'stim_reversibles_1';
    EXPT.subject(2).functional(16).dicomdir = dicomdir2;
    EXPT.subject(2).functional(16).niftidir = niftidir2;
    EXPT.subject(2).functional(16).para{1} = fullfile(paradir2,'subj02b_16_ICGT.para');
    
    EXPT.subject(2).functional(17).run = 18;
    EXPT.subject(2).functional(17).name = 'stim_sentencesSubsetB_3';
    EXPT.subject(2).functional(17).dicomdir = dicomdir2;
    EXPT.subject(2).functional(17).niftidir = niftidir2;
    EXPT.subject(2).functional(17).para{1} = fullfile(paradir2,'subj02b_18_ICGT.para');
    
    EXPT.subject(2).functional(18).run = 20;
    EXPT.subject(2).functional(18).name = 'stim_reversibles_2';
    EXPT.subject(2).functional(18).dicomdir = dicomdir2;
    EXPT.subject(2).functional(18).niftidir = niftidir2;
    EXPT.subject(2).functional(18).para{1} = fullfile(paradir2,'subj02b_20_ICGT.para');
    
    EXPT.subject(2).functional(19).run = 4;
    EXPT.subject(2).functional(19).name = 'stim_reversibles_3';
    EXPT.subject(2).functional(19).dicomdir = dicomdir3;
    EXPT.subject(2).functional(19).niftidir = niftidir3;
    EXPT.subject(2).functional(19).para{1} = fullfile(paradir3,'subj02c_04_ICGT.para');
    
    EXPT.subject(2).functional(20).run = 6;
    EXPT.subject(2).functional(20).name = 'stim_reversibles_4';
    EXPT.subject(2).functional(20).dicomdir = dicomdir3;
    EXPT.subject(2).functional(20).niftidir = niftidir3;
    EXPT.subject(2).functional(20).para{1} = fullfile(paradir3,'subj02c_06_ICGT.para');
    
    EXPT.subject(2).functional(21).run = 8;
    EXPT.subject(2).functional(21).name = 'stim_reversibles_5';
    EXPT.subject(2).functional(21).dicomdir = dicomdir3;
    EXPT.subject(2).functional(21).niftidir = niftidir3;
    EXPT.subject(2).functional(21).para{1} = fullfile(paradir3,'subj02c_08_ICGT.para');
    
    EXPT.subject(2).functional(22).run = 10;
    EXPT.subject(2).functional(22).name = 'stim_reversibles_6';
    EXPT.subject(2).functional(22).dicomdir = dicomdir3;
    EXPT.subject(2).functional(22).niftidir = niftidir3;
    EXPT.subject(2).functional(22).para{1} = fullfile(paradir3,'subj02c_10_ICGT.para');
    
    EXPT.subject(2).functional(23).run = 12;
    EXPT.subject(2).functional(23).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(2).functional(23).dicomdir = dicomdir3;
    EXPT.subject(2).functional(23).niftidir = niftidir3;
    EXPT.subject(2).functional(23).para{1} = fullfile(paradir3,'subj02c_12_ICGT.para');
    
    EXPT.subject(2).functional(24).run = 14;
    EXPT.subject(2).functional(24).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(2).functional(24).dicomdir = dicomdir3;
    EXPT.subject(2).functional(24).niftidir = niftidir3;
    EXPT.subject(2).functional(24).para{1} = fullfile(paradir3,'subj02c_14_ICGT.para');
    
    EXPT.subject(2).functional(25).run = 16;
    EXPT.subject(2).functional(25).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(2).functional(25).dicomdir = dicomdir3;
    EXPT.subject(2).functional(25).niftidir = niftidir3;
    EXPT.subject(2).functional(25).para{1} = fullfile(paradir3,'subj02c_16_ICGT.para');
    
    EXPT.subject(2).functional(26).run = 18;
    EXPT.subject(2).functional(26).name = 'stim_TargetWords1';
    EXPT.subject(2).functional(26).dicomdir = dicomdir3;
    EXPT.subject(2).functional(26).niftidir = niftidir3;
    EXPT.subject(2).functional(26).para{1} = fullfile(paradir3,'subj02c_18_ICGT.para');
    
    EXPT.subject(2).functional(27).run = 20;
    EXPT.subject(2).functional(27).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(2).functional(27).dicomdir = dicomdir3;
    EXPT.subject(2).functional(27).niftidir = niftidir3;
    EXPT.subject(2).functional(27).para{1} = fullfile(paradir3,'subj02c_20_ICGT.para');
    
    EXPT.subject(2).functional(28).run = 22;
    EXPT.subject(2).functional(28).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(2).functional(28).dicomdir = dicomdir3;
    EXPT.subject(2).functional(28).niftidir = niftidir3;
    EXPT.subject(2).functional(28).para{1} = fullfile(paradir3,'subj02c_22_ICGT.para');
    
    %----------------------------------%
    %           SUBJECT 3              
    %----------------------------------%
    EXPT.subject(3).name = 'subj03';
    
    dicomdir1 = fullfile(EXPT.data_dir,'subj03','dicoms');
    niftidir1 = fullfile(EXPT.data_dir,'subj03','nii');
    paradir1 = fullfile(EXPT.data_dir,'subj03','onsets');
    dicomdir2 = fullfile(EXPT.data_dir,'subj03b','dicoms');
    niftidir2 = fullfile(EXPT.data_dir,'subj03b','nii');
    paradir2 = fullfile(EXPT.data_dir,'subj03b','onsets');
    
    EXPT.subject(3).anatomical.run = 4;
    EXPT.subject(3).anatomical.dicomdir = fullfile(EXPT.data_dir,'subj03','dicoms');
    EXPT.subject(3).anatomical.niftidir = fullfile(EXPT.data_dir,'subj03','nii');
    
    EXPT.subject(3).functional(1).run = 8;
    EXPT.subject(3).functional(1).name = 'stim_reversibles_1';
    EXPT.subject(3).functional(1).dicomdir = dicomdir1;
    EXPT.subject(3).functional(1).niftidir = niftidir1;
    EXPT.subject(3).functional(1).para{1} = fullfile(paradir1,'subj03_08_ICGT.para');
    
    EXPT.subject(3).functional(2).run = 10;
    EXPT.subject(3).functional(2).name = 'stim_reversibles_2';
    EXPT.subject(3).functional(2).dicomdir = dicomdir1;
    EXPT.subject(3).functional(2).niftidir = niftidir1;
    EXPT.subject(3).functional(2).para{1} = fullfile(paradir1,'subj03_10_ICGT.para');
    
    EXPT.subject(3).functional(3).run = 12;
    EXPT.subject(3).functional(3).name = 'stim_reversibles_3';
    EXPT.subject(3).functional(3).dicomdir = dicomdir1;
    EXPT.subject(3).functional(3).niftidir = niftidir1;
    EXPT.subject(3).functional(3).para{1} = fullfile(paradir1,'subj03_12_ICGT.para');
    
    EXPT.subject(3).functional(4).run = 14;
    EXPT.subject(3).functional(4).name = 'LangLoc_1';
    EXPT.subject(3).functional(4).dicomdir = dicomdir1;
    EXPT.subject(3).functional(4).niftidir = niftidir1;
    EXPT.subject(3).functional(4).para{1} = fullfile(paradir1,'subj03_14_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(3).functional(5).run = 16;
    EXPT.subject(3).functional(5).name = 'LangLoc_2';
    EXPT.subject(3).functional(5).dicomdir = dicomdir1;
    EXPT.subject(3).functional(5).niftidir = niftidir1;
    EXPT.subject(3).functional(5).para{1} = fullfile(paradir1,'subj03_16_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(3).functional(6).run = 20;
    EXPT.subject(3).functional(6).name = 'stim_reversibles_4';
    EXPT.subject(3).functional(6).dicomdir = dicomdir1;
    EXPT.subject(3).functional(6).niftidir = niftidir1;
    EXPT.subject(3).functional(6).para{1} = fullfile(paradir1,'subj03_20_ICGT.para');
    
    EXPT.subject(3).functional(7).run = 22;
    EXPT.subject(3).functional(7).name = 'stim_reversibles_5';
    EXPT.subject(3).functional(7).dicomdir = dicomdir1;
    EXPT.subject(3).functional(7).niftidir = niftidir1;
    EXPT.subject(3).functional(7).para{1} = fullfile(paradir1,'subj03_22_ICGT.para');
    
    EXPT.subject(3).functional(8).run = 3;
    EXPT.subject(3).functional(8).name = 'stim_reversibles_6';
    EXPT.subject(3).functional(8).dicomdir = dicomdir2;
    EXPT.subject(3).functional(8).niftidir = niftidir2;
    EXPT.subject(3).functional(8).para{1} = fullfile(paradir2,'subj03b_03_ICGT.para');
    
    EXPT.subject(3).functional(9).run = 5;
    EXPT.subject(3).functional(9).name = 'stim_words1';
    EXPT.subject(3).functional(9).dicomdir = dicomdir2;
    EXPT.subject(3).functional(9).niftidir = niftidir2;
    EXPT.subject(3).functional(9).para{1} = fullfile(paradir2,'subj03b_05_ICGT.para');
    
    EXPT.subject(3).functional(10).run = 7;
    EXPT.subject(3).functional(10).name = 'stim_words2';
    EXPT.subject(3).functional(10).dicomdir = dicomdir2;
    EXPT.subject(3).functional(10).niftidir = niftidir2;
    EXPT.subject(3).functional(10).para{1} = fullfile(paradir2,'subj03b_07_ICGT.para');
    
    EXPT.subject(3).functional(11).run = 9;
    EXPT.subject(3).functional(11).name = 'stim_words3';
    EXPT.subject(3).functional(11).dicomdir = dicomdir2;
    EXPT.subject(3).functional(11).niftidir = niftidir2;
    EXPT.subject(3).functional(11).para{1} = fullfile(paradir2,'subj03b_09_ICGT.para');
    
    EXPT.subject(3).functional(12).run = 11;
    EXPT.subject(3).functional(12).name = 'stim_words4';
    EXPT.subject(3).functional(12).dicomdir = dicomdir2;
    EXPT.subject(3).functional(12).niftidir = niftidir2;
    EXPT.subject(3).functional(12).para{1} = fullfile(paradir2,'subj03b_11_ICGT.para');
    
    %----------------------------------%
    %           SUBJECT 4              
    %----------------------------------%
    EXPT.subject(4).name = 'subj04';
    
    dicomdir1 = fullfile(EXPT.data_dir,'subj04','dicoms');
    niftidir1 = fullfile(EXPT.data_dir,'subj04','nii');
    paradir1 = fullfile(EXPT.data_dir,'subj04','onsets');
    
    EXPT.subject(4).anatomical.run = 4;
    EXPT.subject(4).anatomical.dicomdir = fullfile(EXPT.data_dir,'subj04','dicoms');
    EXPT.subject(4).anatomical.niftidir = fullfile(EXPT.data_dir,'subj04','nii');
    
    EXPT.subject(4).functional(1).run = 6;
    EXPT.subject(4).functional(1).name = 'stim_reversibles_1';
    EXPT.subject(4).functional(1).dicomdir = dicomdir1;
    EXPT.subject(4).functional(1).niftidir = niftidir1;
    EXPT.subject(4).functional(1).para{1} = fullfile(paradir1,'subj04_06_ICGT.para');
    
    EXPT.subject(4).functional(2).run = 8;
    EXPT.subject(4).functional(2).name = 'stim_reversibles_2';
    EXPT.subject(4).functional(2).dicomdir = dicomdir1;
    EXPT.subject(4).functional(2).niftidir = niftidir1;
    EXPT.subject(4).functional(2).para{1} = fullfile(paradir1,'subj04_08_ICGT.para');
    
    EXPT.subject(4).functional(3).run = 10;
    EXPT.subject(4).functional(3).name = 'stim_reversibles_3';
    EXPT.subject(4).functional(3).dicomdir = dicomdir1;
    EXPT.subject(4).functional(3).niftidir = niftidir1;
    EXPT.subject(4).functional(3).para{1} = fullfile(paradir1,'subj04_10_ICGT.para');
    
    EXPT.subject(4).functional(4).run = 12;
    EXPT.subject(4).functional(4).name = 'LangLoc_1';
    EXPT.subject(4).functional(4).dicomdir = dicomdir1;
    EXPT.subject(4).functional(4).niftidir = niftidir1;
    EXPT.subject(4).functional(4).para{1} = fullfile(paradir1,'subj04_12_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(4).functional(5).run = 14;
    EXPT.subject(4).functional(5).name = 'LangLoc_2';
    EXPT.subject(4).functional(5).dicomdir = dicomdir1;
    EXPT.subject(4).functional(5).niftidir = niftidir1;
    EXPT.subject(4).functional(5).para{1} = fullfile(paradir1,'subj04_14_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(4).functional(6).run = 16;
    EXPT.subject(4).functional(6).name = 'stim_reversibles_4';
    EXPT.subject(4).functional(6).dicomdir = dicomdir1;
    EXPT.subject(4).functional(6).niftidir = niftidir1;
    EXPT.subject(4).functional(6).para{1} = fullfile(paradir1,'subj04_16_ICGT.para');
    
    EXPT.subject(4).functional(7).run = 18;
    EXPT.subject(4).functional(7).name = 'stim_reversibles_5';
    EXPT.subject(4).functional(7).dicomdir = dicomdir1;
    EXPT.subject(4).functional(7).niftidir = niftidir1;
    EXPT.subject(4).functional(7).para{1} = fullfile(paradir1,'subj04_18_ICGT.para');
    
    EXPT.subject(4).functional(8).run = 20;
    EXPT.subject(4).functional(8).name = 'stim_reversibles_6';
    EXPT.subject(4).functional(8).dicomdir = dicomdir1;
    EXPT.subject(4).functional(8).niftidir = niftidir1;
    EXPT.subject(4).functional(8).para{1} = fullfile(paradir1,'subj04_20_ICGT.para');
	
    EXPT.subject(4).functional(9).run = 22;
    EXPT.subject(4).functional(9).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(4).functional(9).dicomdir = dicomdir1;
    EXPT.subject(4).functional(9).niftidir = niftidir1;
    EXPT.subject(4).functional(9).para{1} = fullfile(paradir1,'subj04_22_ICGT.para');
	
    EXPT.subject(4).functional(10).run = 24;
    EXPT.subject(4).functional(10).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(4).functional(10).dicomdir = dicomdir1;
    EXPT.subject(4).functional(10).niftidir = niftidir1;
    EXPT.subject(4).functional(10).para{1} = fullfile(paradir1,'subj04_24_ICGT.para');
	
    EXPT.subject(4).functional(11).run = 26;
    EXPT.subject(4).functional(11).name = 'stim_words1';
    EXPT.subject(4).functional(11).dicomdir = dicomdir1;
    EXPT.subject(4).functional(11).niftidir = niftidir1;
    EXPT.subject(4).functional(11).para{1} = fullfile(paradir1,'subj04_26_ICGT.para');
	
	
	
	