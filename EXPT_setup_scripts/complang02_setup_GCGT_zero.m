function EXPT = complang02_setup
    
    % Collect information about the experiment into EXPT structure.
    %
    % USAGE: EXPT = complang02_setup
    
    % general info
    EXPT.TR = 2;        % repetition time
    EXPT.fwhm = 4;      % full-width half maximum for smoothing
    EXPT.analysis_dir = '/mindhive/nklab/projects/MACKEREL/analysis02';
    EXPT.data_dir = '/mindhive/nklab/projects/MACKEREL/data02';
    
    %addpath(genpath('/mindhive/nklab/projects/compositionality_lang/scripts/spm8'));
    addpath(genpath('/software/spm8_r5236/'));
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
    EXPT.subject(1).functional(1).para{4} = fullfile(paradir1,'subj01_06_GCGT_zero.para');
    
    EXPT.subject(1).functional(2).run = 8;
    EXPT.subject(1).functional(2).name = 'S1v2W_stim2';
    EXPT.subject(1).functional(2).dicomdir = dicomdir1;
    EXPT.subject(1).functional(2).niftidir = niftidir1;
    EXPT.subject(1).functional(2).para{4} = fullfile(paradir1,'subj01_08_GCGT_zero.para');
    
    EXPT.subject(1).functional(3).run = 12;
    EXPT.subject(1).functional(3).name = 'LangLoc_1';
    EXPT.subject(1).functional(3).dicomdir = dicomdir1;
    EXPT.subject(1).functional(3).niftidir = niftidir1;
    EXPT.subject(1).functional(3).para{4} = fullfile(paradir1,'subj01_12_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(1).functional(4).run = 14;
    EXPT.subject(1).functional(4).name = 'LangLoc_2';
    EXPT.subject(1).functional(4).dicomdir = dicomdir1;
    EXPT.subject(1).functional(4).niftidir = niftidir1;
    EXPT.subject(1).functional(4).para{4} = fullfile(paradir1,'subj01_14_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(1).functional(5).run = 16;
    EXPT.subject(1).functional(5).name = 'S1v2W_stim3';
    EXPT.subject(1).functional(5).dicomdir = dicomdir1;
    EXPT.subject(1).functional(5).niftidir = niftidir1;
    EXPT.subject(1).functional(5).para{4} = fullfile(paradir1,'subj01_16_GCGT_zero.para');
    
    EXPT.subject(1).functional(6).run = 18;
    EXPT.subject(1).functional(6).name = 'S1v2W_stim4';
    EXPT.subject(1).functional(6).dicomdir = dicomdir1;
    EXPT.subject(1).functional(6).niftidir = niftidir1;
    EXPT.subject(1).functional(6).para{4} = fullfile(paradir1,'subj01_18_GCGT_zero.para');
    
    EXPT.subject(1).functional(7).run = 5;
    EXPT.subject(1).functional(7).name = 'stim_words1';
    EXPT.subject(1).functional(7).dicomdir = dicomdir2;
    EXPT.subject(1).functional(7).niftidir = niftidir2;
    EXPT.subject(1).functional(7).para{4} = fullfile(paradir2,'subj01b_05_GCGT_zero.para');
    
    EXPT.subject(1).functional(8).run = 7;
    EXPT.subject(1).functional(8).name = 'stim_words2';
    EXPT.subject(1).functional(8).dicomdir = dicomdir2;
    EXPT.subject(1).functional(8).niftidir = niftidir2;
    EXPT.subject(1).functional(8).para{4} = fullfile(paradir2,'subj01b_07_GCGT_zero.para');
    
    EXPT.subject(1).functional(9).run = 9;
    EXPT.subject(1).functional(9).name = 'stim_words3';
    EXPT.subject(1).functional(9).dicomdir = dicomdir2;
    EXPT.subject(1).functional(9).niftidir = niftidir2;
    EXPT.subject(1).functional(9).para{4} = fullfile(paradir2,'subj01b_09_GCGT_zero.para');
    
    EXPT.subject(1).functional(10).run = 11;
    EXPT.subject(1).functional(10).name = 'stim_words4';
    EXPT.subject(1).functional(10).dicomdir = dicomdir2;
    EXPT.subject(1).functional(10).niftidir = niftidir2;
    EXPT.subject(1).functional(10).para{4} = fullfile(paradir2,'subj01b_11_GCGT_zero.para');
    
    EXPT.subject(1).functional(11).run = 13;
    EXPT.subject(1).functional(11).name = 'stim_words5';
    EXPT.subject(1).functional(11).dicomdir = dicomdir2;
    EXPT.subject(1).functional(11).niftidir = niftidir2;
    EXPT.subject(1).functional(11).para{4} = fullfile(paradir2,'subj01b_13_GCGT_zero.para');
    
    EXPT.subject(1).functional(12).run = 15;
    EXPT.subject(1).functional(12).name = 'stim_words6';
    EXPT.subject(1).functional(12).dicomdir = dicomdir2;
    EXPT.subject(1).functional(12).niftidir = niftidir2;
    EXPT.subject(1).functional(12).para{4} = fullfile(paradir2,'subj01b_15_GCGT_zero.para');
    
    EXPT.subject(1).functional(13).run = 17;
    EXPT.subject(1).functional(13).name = 'stim_words7';
    EXPT.subject(1).functional(13).dicomdir = dicomdir2;
    EXPT.subject(1).functional(13).niftidir = niftidir2;
    EXPT.subject(1).functional(13).para{4} = fullfile(paradir2,'subj01b_17_GCGT_zero.para');
    
    EXPT.subject(1).functional(14).run = 19;
    EXPT.subject(1).functional(14).name = 'stim_words8';
    EXPT.subject(1).functional(14).dicomdir = dicomdir2;
    EXPT.subject(1).functional(14).niftidir = niftidir2;
    EXPT.subject(1).functional(14).para{4} = fullfile(paradir2,'subj01b_19_GCGT_zero.para');
    
    EXPT.subject(1).functional(15).run = 4;
    EXPT.subject(1).functional(15).name = 'stim_sentencesSubsetA_3';
    EXPT.subject(1).functional(15).dicomdir = dicomdir3;
    EXPT.subject(1).functional(15).niftidir = niftidir3;
    EXPT.subject(1).functional(15).para{4} = fullfile(paradir3,'subj01c_04_GCGT_zero.para');
    
    EXPT.subject(1).functional(16).run = 6;
    EXPT.subject(1).functional(16).name = 'stim_reversibles_1';
    EXPT.subject(1).functional(16).dicomdir = dicomdir3;
    EXPT.subject(1).functional(16).niftidir = niftidir3;
    EXPT.subject(1).functional(16).para{4} = fullfile(paradir3,'subj01c_06_GCGT_zero.para');
    
    EXPT.subject(1).functional(17).run = 8;
    EXPT.subject(1).functional(17).name = 'stim_reversibles_2';
    EXPT.subject(1).functional(17).dicomdir = dicomdir3;
    EXPT.subject(1).functional(17).niftidir = niftidir3;
    EXPT.subject(1).functional(17).para{4} = fullfile(paradir3,'subj01c_08_GCGT_zero.para');
    
    EXPT.subject(1).functional(18).run = 10;
    EXPT.subject(1).functional(18).name = 'stim_reversibles_3';
    EXPT.subject(1).functional(18).dicomdir = dicomdir3;
    EXPT.subject(1).functional(18).niftidir = niftidir3;
    EXPT.subject(1).functional(18).para{4} = fullfile(paradir3,'subj01c_10_GCGT_zero.para');
    
    EXPT.subject(1).functional(19).run = 12;
    EXPT.subject(1).functional(19).name = 'stim_reversibles_4';
    EXPT.subject(1).functional(19).dicomdir = dicomdir3;
    EXPT.subject(1).functional(19).niftidir = niftidir3;
    EXPT.subject(1).functional(19).para{4} = fullfile(paradir3,'subj01c_12_GCGT_zero.para');
    
    EXPT.subject(1).functional(20).run = 14;
    EXPT.subject(1).functional(20).name = 'stim_reversibles_5';
    EXPT.subject(1).functional(20).dicomdir = dicomdir3;
    EXPT.subject(1).functional(20).niftidir = niftidir3;
    EXPT.subject(1).functional(20).para{4} = fullfile(paradir3,'subj01c_14_GCGT_zero.para');
    
    EXPT.subject(1).functional(21).run = 16;
    EXPT.subject(1).functional(21).name = 'stim_reversibles_6';
    EXPT.subject(1).functional(21).dicomdir = dicomdir3;
    EXPT.subject(1).functional(21).niftidir = niftidir3;
    EXPT.subject(1).functional(21).para{4} = fullfile(paradir3,'subj01c_16_GCGT_zero.para');
    
    EXPT.subject(1).functional(22).run = 18;
    EXPT.subject(1).functional(22).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(1).functional(22).dicomdir = dicomdir3;
    EXPT.subject(1).functional(22).niftidir = niftidir3;
    EXPT.subject(1).functional(22).para{4} = fullfile(paradir3,'subj01c_18_GCGT_zero.para');
    
    EXPT.subject(1).functional(23).run = 20;
    EXPT.subject(1).functional(23).name = 'stim_sentencesSubsetB_2';
    EXPT.subject(1).functional(23).dicomdir = dicomdir3;
    EXPT.subject(1).functional(23).niftidir = niftidir3;
    EXPT.subject(1).functional(23).para{4} = fullfile(paradir3,'subj01c_20_GCGT_zero.para');
    
    EXPT.subject(1).functional(24).run = 4;
    EXPT.subject(1).functional(24).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(1).functional(24).dicomdir = dicomdir4;
    EXPT.subject(1).functional(24).niftidir = niftidir4;
    EXPT.subject(1).functional(24).para{4} = fullfile(paradir4,'subj01d_04_GCGT_zero.para');
    
    EXPT.subject(1).functional(25).run = 6;
    EXPT.subject(1).functional(25).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(1).functional(25).dicomdir = dicomdir4;
    EXPT.subject(1).functional(25).niftidir = niftidir4;
    EXPT.subject(1).functional(25).para{4} = fullfile(paradir4,'subj01d_06_GCGT_zero.para');
    
    EXPT.subject(1).functional(26).run = 8;
    EXPT.subject(1).functional(26).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(1).functional(26).dicomdir = dicomdir4;
    EXPT.subject(1).functional(26).niftidir = niftidir4;
    EXPT.subject(1).functional(26).para{4} = fullfile(paradir4,'subj01d_08_GCGT_zero.para');
    
    EXPT.subject(1).functional(27).run = 10;
    EXPT.subject(1).functional(27).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(1).functional(27).dicomdir = dicomdir4;
    EXPT.subject(1).functional(27).niftidir = niftidir4;
    EXPT.subject(1).functional(27).para{4} = fullfile(paradir4,'subj01d_10_GCGT_zero.para');
    
    EXPT.subject(1).functional(28).run = 12;
    EXPT.subject(1).functional(28).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(1).functional(28).dicomdir = dicomdir4;
    EXPT.subject(1).functional(28).niftidir = niftidir4;
    EXPT.subject(1).functional(28).para{4} = fullfile(paradir4,'subj01d_12_GCGT_zero.para');
    
    EXPT.subject(1).functional(29).run = 14;
    EXPT.subject(1).functional(29).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(1).functional(29).dicomdir = dicomdir4;
    EXPT.subject(1).functional(29).niftidir = niftidir4;
    EXPT.subject(1).functional(29).para{4} = fullfile(paradir4,'subj01d_14_GCGT_zero.para');
        
    EXPT.subject(1).functional(30).run = 6;
    EXPT.subject(1).functional(30).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(1).functional(30).dicomdir = dicomdir5;
    EXPT.subject(1).functional(30).niftidir = niftidir5;
    EXPT.subject(1).functional(30).para{4} = fullfile(paradir5,'subj01e_06_GCGT_zero.para');
    
    EXPT.subject(1).functional(31).run = 8;
    EXPT.subject(1).functional(31).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(1).functional(31).dicomdir = dicomdir5;
    EXPT.subject(1).functional(31).niftidir = niftidir5;
    EXPT.subject(1).functional(31).para{4} = fullfile(paradir5,'subj01e_08_GCGT_zero.para');
    
    EXPT.subject(1).functional(32).run = 10;
    EXPT.subject(1).functional(32).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(1).functional(32).dicomdir = dicomdir5;
    EXPT.subject(1).functional(32).niftidir = niftidir5;
    EXPT.subject(1).functional(32).para{4} = fullfile(paradir5,'subj01e_10_GCGT_zero.para');
    
    EXPT.subject(1).functional(33).run = 12;
    EXPT.subject(1).functional(33).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(1).functional(33).dicomdir = dicomdir5;
    EXPT.subject(1).functional(33).niftidir = niftidir5;
    EXPT.subject(1).functional(33).para{4} = fullfile(paradir5,'subj01e_12_GCGT_zero.para');
    
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
    dicomdir4 = fullfile(EXPT.data_dir,'subj02d','dicoms');
    niftidir4 = fullfile(EXPT.data_dir,'subj02d','nii');
    paradir4 = fullfile(EXPT.data_dir,'subj02d','onsets');
    
    EXPT.subject(2).anatomical.run = 4;
    EXPT.subject(2).anatomical.dicomdir = fullfile(EXPT.data_dir,'subj02','dicoms');
    EXPT.subject(2).anatomical.niftidir = fullfile(EXPT.data_dir,'subj02','nii');
    
    EXPT.subject(2).functional(1).run = 6;
    EXPT.subject(2).functional(1).name = 'stim_words1';
    EXPT.subject(2).functional(1).dicomdir = dicomdir1;
    EXPT.subject(2).functional(1).niftidir = niftidir1;
    EXPT.subject(2).functional(1).para{4} = fullfile(paradir1,'subj02_06_GCGT_zero.para');
    
    EXPT.subject(2).functional(2).run = 8;
    EXPT.subject(2).functional(2).name = 'stim_words2';
    EXPT.subject(2).functional(2).dicomdir = dicomdir1;
    EXPT.subject(2).functional(2).niftidir = niftidir1;
    EXPT.subject(2).functional(2).para{4} = fullfile(paradir1,'subj02_08_GCGT_zero.para');
    
    EXPT.subject(2).functional(3).run = 10;
    EXPT.subject(2).functional(3).name = 'stim_words3';
    EXPT.subject(2).functional(3).dicomdir = dicomdir1;
    EXPT.subject(2).functional(3).niftidir = niftidir1;
    EXPT.subject(2).functional(3).para{4} = fullfile(paradir1,'subj02_10_GCGT_zero.para');
    
    EXPT.subject(2).functional(4).run = 12;
    EXPT.subject(2).functional(4).name = 'LangLoc_1';
    EXPT.subject(2).functional(4).dicomdir = dicomdir1;
    EXPT.subject(2).functional(4).niftidir = niftidir1;
    EXPT.subject(2).functional(4).para{4} = fullfile(paradir1,'subj02_12_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(2).functional(5).run = 14;
    EXPT.subject(2).functional(5).name = 'LangLoc_2';
    EXPT.subject(2).functional(5).dicomdir = dicomdir1;
    EXPT.subject(2).functional(5).niftidir = niftidir1;
    EXPT.subject(2).functional(5).para{4} = fullfile(paradir1,'subj02_14_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(2).functional(6).run = 16;
    EXPT.subject(2).functional(6).name = 'stim_words4';
    EXPT.subject(2).functional(6).dicomdir = dicomdir1;
    EXPT.subject(2).functional(6).niftidir = niftidir1;
    EXPT.subject(2).functional(6).para{4} = fullfile(paradir1,'subj02_16_GCGT_zero.para');
    
    EXPT.subject(2).functional(7).run = 18;
    EXPT.subject(2).functional(7).name = 'stim_words5';
    EXPT.subject(2).functional(7).dicomdir = dicomdir1;
    EXPT.subject(2).functional(7).niftidir = niftidir1;
    EXPT.subject(2).functional(7).para{4} = fullfile(paradir1,'subj02_18_GCGT_zero.para');
    
    EXPT.subject(2).functional(8).run = 20;
    EXPT.subject(2).functional(8).name = 'stim_words6';
    EXPT.subject(2).functional(8).dicomdir = dicomdir1;
    EXPT.subject(2).functional(8).niftidir = niftidir1;
    EXPT.subject(2).functional(8).para{4} = fullfile(paradir1,'subj02_20_GCGT_zero.para');
    
    EXPT.subject(2).functional(9).run = 22;
    EXPT.subject(2).functional(9).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(2).functional(9).dicomdir = dicomdir1;
    EXPT.subject(2).functional(9).niftidir = niftidir1;
    EXPT.subject(2).functional(9).para{4} = fullfile(paradir1,'subj02_22_GCGT_zero.para');
    
    EXPT.subject(2).functional(10).run = 24;
    EXPT.subject(2).functional(10).name = 'stim_sentencesSubsetA_2';
    EXPT.subject(2).functional(10).dicomdir = dicomdir1;
    EXPT.subject(2).functional(10).niftidir = niftidir1;
    EXPT.subject(2).functional(10).para{4} = fullfile(paradir1,'subj02_24_GCGT_zero.para');
    
    EXPT.subject(2).functional(11).run = 6;
    EXPT.subject(2).functional(11).name = 'stim_sentencesSubsetA_3';
    EXPT.subject(2).functional(11).dicomdir = dicomdir2;
    EXPT.subject(2).functional(11).niftidir = niftidir2;
    EXPT.subject(2).functional(11).para{4} = fullfile(paradir2,'subj02b_06_GCGT_zero.para');
    
    EXPT.subject(2).functional(12).run = 8;
    EXPT.subject(2).functional(12).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(2).functional(12).dicomdir = dicomdir2;
    EXPT.subject(2).functional(12).niftidir = niftidir2;
    EXPT.subject(2).functional(12).para{4} = fullfile(paradir2,'subj02b_08_GCGT_zero.para');
    
    EXPT.subject(2).functional(13).run = 10;
    EXPT.subject(2).functional(13).name = 'stim_words7';
    EXPT.subject(2).functional(13).dicomdir = dicomdir2;
    EXPT.subject(2).functional(13).niftidir = niftidir2;
    EXPT.subject(2).functional(13).para{4} = fullfile(paradir2,'subj02b_10_GCGT_zero.para');
    
    EXPT.subject(2).functional(14).run = 12;
    EXPT.subject(2).functional(14).name = 'stim_sentencesSubsetB_2';
    EXPT.subject(2).functional(14).dicomdir = dicomdir2;
    EXPT.subject(2).functional(14).niftidir = niftidir2;
    EXPT.subject(2).functional(14).para{4} = fullfile(paradir2,'subj02b_12_GCGT_zero.para');
    
    EXPT.subject(2).functional(15).run = 14;
    EXPT.subject(2).functional(15).name = 'stim_words8';
    EXPT.subject(2).functional(15).dicomdir = dicomdir2;
    EXPT.subject(2).functional(15).niftidir = niftidir2;
    EXPT.subject(2).functional(15).para{4} = fullfile(paradir2,'subj02b_14_GCGT_zero.para');
    
    EXPT.subject(2).functional(16).run = 16;
    EXPT.subject(2).functional(16).name = 'stim_reversibles_1';
    EXPT.subject(2).functional(16).dicomdir = dicomdir2;
    EXPT.subject(2).functional(16).niftidir = niftidir2;
    EXPT.subject(2).functional(16).para{4} = fullfile(paradir2,'subj02b_16_GCGT_zero.para');
    
    EXPT.subject(2).functional(17).run = 18;
    EXPT.subject(2).functional(17).name = 'stim_sentencesSubsetB_3';
    EXPT.subject(2).functional(17).dicomdir = dicomdir2;
    EXPT.subject(2).functional(17).niftidir = niftidir2;
    EXPT.subject(2).functional(17).para{4} = fullfile(paradir2,'subj02b_18_GCGT_zero.para');
    
    EXPT.subject(2).functional(18).run = 20;
    EXPT.subject(2).functional(18).name = 'stim_reversibles_2';
    EXPT.subject(2).functional(18).dicomdir = dicomdir2;
    EXPT.subject(2).functional(18).niftidir = niftidir2;
    EXPT.subject(2).functional(18).para{4} = fullfile(paradir2,'subj02b_20_GCGT_zero.para');
    
    EXPT.subject(2).functional(19).run = 4;
    EXPT.subject(2).functional(19).name = 'stim_reversibles_3';
    EXPT.subject(2).functional(19).dicomdir = dicomdir3;
    EXPT.subject(2).functional(19).niftidir = niftidir3;
    EXPT.subject(2).functional(19).para{4} = fullfile(paradir3,'subj02c_04_GCGT_zero.para');
    
    EXPT.subject(2).functional(20).run = 6;
    EXPT.subject(2).functional(20).name = 'stim_reversibles_4';
    EXPT.subject(2).functional(20).dicomdir = dicomdir3;
    EXPT.subject(2).functional(20).niftidir = niftidir3;
    EXPT.subject(2).functional(20).para{4} = fullfile(paradir3,'subj02c_06_GCGT_zero.para');
    
    EXPT.subject(2).functional(21).run = 8;
    EXPT.subject(2).functional(21).name = 'stim_reversibles_5';
    EXPT.subject(2).functional(21).dicomdir = dicomdir3;
    EXPT.subject(2).functional(21).niftidir = niftidir3;
    EXPT.subject(2).functional(21).para{4} = fullfile(paradir3,'subj02c_08_GCGT_zero.para');
    
    EXPT.subject(2).functional(22).run = 10;
    EXPT.subject(2).functional(22).name = 'stim_reversibles_6';
    EXPT.subject(2).functional(22).dicomdir = dicomdir3;
    EXPT.subject(2).functional(22).niftidir = niftidir3;
    EXPT.subject(2).functional(22).para{4} = fullfile(paradir3,'subj02c_10_GCGT_zero.para');
    
    EXPT.subject(2).functional(23).run = 12;
    EXPT.subject(2).functional(23).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(2).functional(23).dicomdir = dicomdir3;
    EXPT.subject(2).functional(23).niftidir = niftidir3;
    EXPT.subject(2).functional(23).para{4} = fullfile(paradir3,'subj02c_12_GCGT_zero.para');
    
    EXPT.subject(2).functional(24).run = 14;
    EXPT.subject(2).functional(24).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(2).functional(24).dicomdir = dicomdir3;
    EXPT.subject(2).functional(24).niftidir = niftidir3;
    EXPT.subject(2).functional(24).para{4} = fullfile(paradir3,'subj02c_14_GCGT_zero.para');
    
    EXPT.subject(2).functional(25).run = 16;
    EXPT.subject(2).functional(25).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(2).functional(25).dicomdir = dicomdir3;
    EXPT.subject(2).functional(25).niftidir = niftidir3;
    EXPT.subject(2).functional(25).para{4} = fullfile(paradir3,'subj02c_16_GCGT_zero.para');
    
    EXPT.subject(2).functional(26).run = 18;
    EXPT.subject(2).functional(26).name = 'stim_TargetWords1';
    EXPT.subject(2).functional(26).dicomdir = dicomdir3;
    EXPT.subject(2).functional(26).niftidir = niftidir3;
    EXPT.subject(2).functional(26).para{4} = fullfile(paradir3,'subj02c_18_GCGT_zero.para');
    
    EXPT.subject(2).functional(27).run = 20;
    EXPT.subject(2).functional(27).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(2).functional(27).dicomdir = dicomdir3;
    EXPT.subject(2).functional(27).niftidir = niftidir3;
    EXPT.subject(2).functional(27).para{4} = fullfile(paradir3,'subj02c_20_GCGT_zero.para');
    
    EXPT.subject(2).functional(28).run = 22;
    EXPT.subject(2).functional(28).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(2).functional(28).dicomdir = dicomdir3;
    EXPT.subject(2).functional(28).niftidir = niftidir3;
    EXPT.subject(2).functional(28).para{4} = fullfile(paradir3,'subj02c_22_GCGT_zero.para');
    
    EXPT.subject(2).functional(29).run = 3;
    EXPT.subject(2).functional(29).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(2).functional(29).dicomdir = dicomdir4;
    EXPT.subject(2).functional(29).niftidir = niftidir4;
    EXPT.subject(2).functional(29).para{4} = fullfile(paradir4,'subj02d_03_GCGT_zero.para');
    
    EXPT.subject(2).functional(30).run = 5;
    EXPT.subject(2).functional(30).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(2).functional(30).dicomdir = dicomdir4;
    EXPT.subject(2).functional(30).niftidir = niftidir4;
    EXPT.subject(2).functional(30).para{4} = fullfile(paradir4,'subj02d_05_GCGT_zero.para');
    
    EXPT.subject(2).functional(31).run = 7;
    EXPT.subject(2).functional(31).name = 'stim_sentencesAllSubset_8';
    EXPT.subject(2).functional(31).dicomdir = dicomdir4;
    EXPT.subject(2).functional(31).niftidir = niftidir4;
    EXPT.subject(2).functional(31).para{4} = fullfile(paradir4,'subj02d_07_GCGT_zero.para');
    
    EXPT.subject(2).functional(32).run = 9;
    EXPT.subject(2).functional(32).name = 'stim_TargetWords2';
    EXPT.subject(2).functional(32).dicomdir = dicomdir4;
    EXPT.subject(2).functional(32).niftidir = niftidir4;
    EXPT.subject(2).functional(32).para{4} = fullfile(paradir4,'subj02d_09_GCGT_zero.para');
    
    EXPT.subject(2).functional(33).run = 11;
    EXPT.subject(2).functional(33).name = 'stim_TargetWords3';
    EXPT.subject(2).functional(33).dicomdir = dicomdir4;
    EXPT.subject(2).functional(33).niftidir = niftidir4;
    EXPT.subject(2).functional(33).para{4} = fullfile(paradir4,'subj02d_11_GCGT_zero.para');
    
    EXPT.subject(2).functional(34).run = 13;
    EXPT.subject(2).functional(34).name = 'stim_TargetWords4';
    EXPT.subject(2).functional(34).dicomdir = dicomdir4;
    EXPT.subject(2).functional(34).niftidir = niftidir4;
    EXPT.subject(2).functional(34).para{4} = fullfile(paradir4,'subj02d_13_GCGT_zero.para');
    
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
    EXPT.subject(3).functional(1).para{4} = fullfile(paradir1,'subj03_08_GCGT_zero.para');
    
    EXPT.subject(3).functional(2).run = 10;
    EXPT.subject(3).functional(2).name = 'stim_reversibles_2';
    EXPT.subject(3).functional(2).dicomdir = dicomdir1;
    EXPT.subject(3).functional(2).niftidir = niftidir1;
    EXPT.subject(3).functional(2).para{4} = fullfile(paradir1,'subj03_10_GCGT_zero.para');
    
    EXPT.subject(3).functional(3).run = 12;
    EXPT.subject(3).functional(3).name = 'stim_reversibles_3';
    EXPT.subject(3).functional(3).dicomdir = dicomdir1;
    EXPT.subject(3).functional(3).niftidir = niftidir1;
    EXPT.subject(3).functional(3).para{4} = fullfile(paradir1,'subj03_12_GCGT_zero.para');
    
    EXPT.subject(3).functional(4).run = 14;
    EXPT.subject(3).functional(4).name = 'LangLoc_1';
    EXPT.subject(3).functional(4).dicomdir = dicomdir1;
    EXPT.subject(3).functional(4).niftidir = niftidir1;
    EXPT.subject(3).functional(4).para{4} = fullfile(paradir1,'subj03_14_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(3).functional(5).run = 16;
    EXPT.subject(3).functional(5).name = 'LangLoc_2';
    EXPT.subject(3).functional(5).dicomdir = dicomdir1;
    EXPT.subject(3).functional(5).niftidir = niftidir1;
    EXPT.subject(3).functional(5).para{4} = fullfile(paradir1,'subj03_16_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(3).functional(6).run = 20;
    EXPT.subject(3).functional(6).name = 'stim_reversibles_4';
    EXPT.subject(3).functional(6).dicomdir = dicomdir1;
    EXPT.subject(3).functional(6).niftidir = niftidir1;
    EXPT.subject(3).functional(6).para{4} = fullfile(paradir1,'subj03_20_GCGT_zero.para');
    
    EXPT.subject(3).functional(7).run = 22;
    EXPT.subject(3).functional(7).name = 'stim_reversibles_5';
    EXPT.subject(3).functional(7).dicomdir = dicomdir1;
    EXPT.subject(3).functional(7).niftidir = niftidir1;
    EXPT.subject(3).functional(7).para{4} = fullfile(paradir1,'subj03_22_GCGT_zero.para');
    
    EXPT.subject(3).functional(8).run = 3;
    EXPT.subject(3).functional(8).name = 'stim_reversibles_6';
    EXPT.subject(3).functional(8).dicomdir = dicomdir2;
    EXPT.subject(3).functional(8).niftidir = niftidir2;
    EXPT.subject(3).functional(8).para{4} = fullfile(paradir2,'subj03b_03_GCGT_zero.para');
    
    EXPT.subject(3).functional(9).run = 5;
    EXPT.subject(3).functional(9).name = 'stim_words1';
    EXPT.subject(3).functional(9).dicomdir = dicomdir2;
    EXPT.subject(3).functional(9).niftidir = niftidir2;
    EXPT.subject(3).functional(9).para{4} = fullfile(paradir2,'subj03b_05_GCGT_zero.para');
    
    EXPT.subject(3).functional(10).run = 7;
    EXPT.subject(3).functional(10).name = 'stim_words2';
    EXPT.subject(3).functional(10).dicomdir = dicomdir2;
    EXPT.subject(3).functional(10).niftidir = niftidir2;
    EXPT.subject(3).functional(10).para{4} = fullfile(paradir2,'subj03b_07_GCGT_zero.para');
    
    EXPT.subject(3).functional(11).run = 9;
    EXPT.subject(3).functional(11).name = 'stim_words3';
    EXPT.subject(3).functional(11).dicomdir = dicomdir2;
    EXPT.subject(3).functional(11).niftidir = niftidir2;
    EXPT.subject(3).functional(11).para{4} = fullfile(paradir2,'subj03b_09_GCGT_zero.para');
    
    EXPT.subject(3).functional(12).run = 11;
    EXPT.subject(3).functional(12).name = 'stim_words4';
    EXPT.subject(3).functional(12).dicomdir = dicomdir2;
    EXPT.subject(3).functional(12).niftidir = niftidir2;
    EXPT.subject(3).functional(12).para{4} = fullfile(paradir2,'subj03b_11_GCGT_zero.para');
    
    %----------------------------------%
    %           SUBJECT 4              
    %----------------------------------%
    EXPT.subject(4).name = 'subj04';
    
    dicomdir1 = fullfile(EXPT.data_dir,'subj04','dicoms');
    niftidir1 = fullfile(EXPT.data_dir,'subj04','nii');
    paradir1 = fullfile(EXPT.data_dir,'subj04','onsets');
    dicomdir2 = fullfile(EXPT.data_dir,'subj04b','dicoms');
    niftidir2 = fullfile(EXPT.data_dir,'subj04b','nii');
    paradir2 = fullfile(EXPT.data_dir,'subj04b','onsets');
    dicomdir3 = fullfile(EXPT.data_dir,'subj04c','dicoms');
    niftidir3 = fullfile(EXPT.data_dir,'subj04c','nii');
    paradir3 = fullfile(EXPT.data_dir,'subj04c','onsets');
    dicomdir4 = fullfile(EXPT.data_dir,'subj04d','dicoms');
    niftidir4 = fullfile(EXPT.data_dir,'subj04d','nii');
    paradir4 = fullfile(EXPT.data_dir,'subj04d','onsets');
    dicomdir5 = fullfile(EXPT.data_dir,'subj04e','dicoms');
    niftidir5 = fullfile(EXPT.data_dir,'subj04e','nii');
    paradir5 = fullfile(EXPT.data_dir,'subj04e','onsets');
    dicomdir6 = fullfile(EXPT.data_dir,'subj04f','dicoms');
    niftidir6 = fullfile(EXPT.data_dir,'subj04f','nii');
    paradir6 = fullfile(EXPT.data_dir,'subj04f','onsets');
    
    EXPT.subject(4).anatomical.run = 4;
    EXPT.subject(4).anatomical.dicomdir = fullfile(EXPT.data_dir,'subj04','dicoms');
    EXPT.subject(4).anatomical.niftidir = fullfile(EXPT.data_dir,'subj04','nii');
    
    EXPT.subject(4).functional(1).run = 6;
    EXPT.subject(4).functional(1).name = 'stim_reversibles_1';
    EXPT.subject(4).functional(1).dicomdir = dicomdir1;
    EXPT.subject(4).functional(1).niftidir = niftidir1;
    EXPT.subject(4).functional(1).para{4} = fullfile(paradir1,'subj04_06_GCGT_zero.para');
    
    EXPT.subject(4).functional(2).run = 8;
    EXPT.subject(4).functional(2).name = 'stim_reversibles_2';
    EXPT.subject(4).functional(2).dicomdir = dicomdir1;
    EXPT.subject(4).functional(2).niftidir = niftidir1;
    EXPT.subject(4).functional(2).para{4} = fullfile(paradir1,'subj04_08_GCGT_zero.para');
    
    EXPT.subject(4).functional(3).run = 10;
    EXPT.subject(4).functional(3).name = 'stim_reversibles_3';
    EXPT.subject(4).functional(3).dicomdir = dicomdir1;
    EXPT.subject(4).functional(3).niftidir = niftidir1;
    EXPT.subject(4).functional(3).para{4} = fullfile(paradir1,'subj04_10_GCGT_zero.para');
    
    EXPT.subject(4).functional(4).run = 12;
    EXPT.subject(4).functional(4).name = 'LangLoc_1';
    EXPT.subject(4).functional(4).dicomdir = dicomdir1;
    EXPT.subject(4).functional(4).niftidir = niftidir1;
    EXPT.subject(4).functional(4).para{4} = fullfile(paradir1,'subj04_12_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(4).functional(5).run = 14;
    EXPT.subject(4).functional(5).name = 'LangLoc_2';
    EXPT.subject(4).functional(5).dicomdir = dicomdir1;
    EXPT.subject(4).functional(5).niftidir = niftidir1;
    EXPT.subject(4).functional(5).para{4} = fullfile(paradir1,'subj04_14_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(4).functional(6).run = 16;
    EXPT.subject(4).functional(6).name = 'stim_reversibles_4';
    EXPT.subject(4).functional(6).dicomdir = dicomdir1;
    EXPT.subject(4).functional(6).niftidir = niftidir1;
    EXPT.subject(4).functional(6).para{4} = fullfile(paradir1,'subj04_16_GCGT_zero.para');
    
    EXPT.subject(4).functional(7).run = 18;
    EXPT.subject(4).functional(7).name = 'stim_reversibles_5';
    EXPT.subject(4).functional(7).dicomdir = dicomdir1;
    EXPT.subject(4).functional(7).niftidir = niftidir1;
    EXPT.subject(4).functional(7).para{4} = fullfile(paradir1,'subj04_18_GCGT_zero.para');
    
    EXPT.subject(4).functional(8).run = 20;
    EXPT.subject(4).functional(8).name = 'stim_reversibles_6';
    EXPT.subject(4).functional(8).dicomdir = dicomdir1;
    EXPT.subject(4).functional(8).niftidir = niftidir1;
    EXPT.subject(4).functional(8).para{4} = fullfile(paradir1,'subj04_20_GCGT_zero.para');
	
    EXPT.subject(4).functional(9).run = 22;
    EXPT.subject(4).functional(9).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(4).functional(9).dicomdir = dicomdir1;
    EXPT.subject(4).functional(9).niftidir = niftidir1;
    EXPT.subject(4).functional(9).para{4} = fullfile(paradir1,'subj04_22_GCGT_zero.para');
	
    EXPT.subject(4).functional(10).run = 24;
    EXPT.subject(4).functional(10).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(4).functional(10).dicomdir = dicomdir1;
    EXPT.subject(4).functional(10).niftidir = niftidir1;
    EXPT.subject(4).functional(10).para{4} = fullfile(paradir1,'subj04_24_GCGT_zero.para');
	
    EXPT.subject(4).functional(11).run = 26;
    EXPT.subject(4).functional(11).name = 'stim_words1';
    EXPT.subject(4).functional(11).dicomdir = dicomdir1;
    EXPT.subject(4).functional(11).niftidir = niftidir1;
    EXPT.subject(4).functional(11).para{4} = fullfile(paradir1,'subj04_26_GCGT_zero.para');
		
	EXPT.subject(4).functional(12).run = 3;
    EXPT.subject(4).functional(12).name = 'stim_words2';
    EXPT.subject(4).functional(12).dicomdir = dicomdir2;
    EXPT.subject(4).functional(12).niftidir = niftidir2;
    EXPT.subject(4).functional(12).para{4} = fullfile(paradir2,'subj04b_03_GCGT_zero.para');
    
    EXPT.subject(4).functional(13).run = 5;
    EXPT.subject(4).functional(13).name = 'stim_words3';
    EXPT.subject(4).functional(13).dicomdir = dicomdir2;
    EXPT.subject(4).functional(13).niftidir = niftidir2;
    EXPT.subject(4).functional(13).para{4} = fullfile(paradir2,'subj04b_05_GCGT_zero.para');
    
    EXPT.subject(4).functional(14).run = 7;
    EXPT.subject(4).functional(14).name = 'stim_words4';
    EXPT.subject(4).functional(14).dicomdir = dicomdir2;
    EXPT.subject(4).functional(14).niftidir = niftidir2;
    EXPT.subject(4).functional(14).para{4} = fullfile(paradir2,'subj04b_07_GCGT_zero.para');
    
    EXPT.subject(4).functional(15).run = 9;
    EXPT.subject(4).functional(15).name = 'stim_words5';
    EXPT.subject(4).functional(15).dicomdir = dicomdir2;
    EXPT.subject(4).functional(15).niftidir = niftidir2;
    EXPT.subject(4).functional(15).para{4} = fullfile(paradir2,'subj04b_09_GCGT_zero.para');
    
    EXPT.subject(4).functional(16).run = 11;
    EXPT.subject(4).functional(16).name = 'stim_words6';
    EXPT.subject(4).functional(16).dicomdir = dicomdir2;
    EXPT.subject(4).functional(16).niftidir = niftidir2;
    EXPT.subject(4).functional(16).para{4} = fullfile(paradir2,'subj04b_11_GCGT_zero.para');
    
    EXPT.subject(4).functional(17).run = 13;
    EXPT.subject(4).functional(17).name = 'stim_words7';
    EXPT.subject(4).functional(17).dicomdir = dicomdir2;
    EXPT.subject(4).functional(17).niftidir = niftidir2;
    EXPT.subject(4).functional(17).para{4} = fullfile(paradir2,'subj04b_13_GCGT_zero.para');
    
    EXPT.subject(4).functional(18).run = 15;
    EXPT.subject(4).functional(18).name = 'stim_words8';
    EXPT.subject(4).functional(18).dicomdir = dicomdir2;
    EXPT.subject(4).functional(18).niftidir = niftidir2;
    EXPT.subject(4).functional(18).para{4} = fullfile(paradir2,'subj04b_15_GCGT_zero.para');
    
    EXPT.subject(4).functional(19).run = 17;
    EXPT.subject(4).functional(19).name = 'stim_TargetWords1';
    EXPT.subject(4).functional(19).dicomdir = dicomdir2;
    EXPT.subject(4).functional(19).niftidir = niftidir2;
    EXPT.subject(4).functional(19).para{4} = fullfile(paradir2,'subj04b_17_GCGT_zero.para');
	
    EXPT.subject(4).functional(20).run = 19;
    EXPT.subject(4).functional(20).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(4).functional(20).dicomdir = dicomdir2;
    EXPT.subject(4).functional(20).niftidir = niftidir2;
    EXPT.subject(4).functional(20).para{4} = fullfile(paradir2,'subj04b_19_GCGT_zero.para');
	
    EXPT.subject(4).functional(21).run = 21;
    EXPT.subject(4).functional(21).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(4).functional(21).dicomdir = dicomdir2;
    EXPT.subject(4).functional(21).niftidir = niftidir2;
    EXPT.subject(4).functional(21).para{4} = fullfile(paradir2,'subj04b_21_GCGT_zero.para');
	
    EXPT.subject(4).functional(22).run = 23;
    EXPT.subject(4).functional(22).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(4).functional(22).dicomdir = dicomdir2;
    EXPT.subject(4).functional(22).niftidir = niftidir2;
    EXPT.subject(4).functional(22).para{4} = fullfile(paradir2,'subj04b_23_GCGT_zero.para');
		
    EXPT.subject(4).functional(23).run = 25;
    EXPT.subject(4).functional(23).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(4).functional(23).dicomdir = dicomdir2;
    EXPT.subject(4).functional(23).niftidir = niftidir2;
    EXPT.subject(4).functional(23).para{4} = fullfile(paradir2,'subj04b_25_GCGT_zero.para');
	
    EXPT.subject(4).functional(24).run = 27;
    EXPT.subject(4).functional(24).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(4).functional(24).dicomdir = dicomdir2;
    EXPT.subject(4).functional(24).niftidir = niftidir2;
    EXPT.subject(4).functional(24).para{4} = fullfile(paradir2,'subj04b_27_GCGT_zero.para');
	
    EXPT.subject(4).functional(25).run = 3;
    EXPT.subject(4).functional(25).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(4).functional(25).dicomdir = dicomdir3;
    EXPT.subject(4).functional(25).niftidir = niftidir3;
    EXPT.subject(4).functional(25).para{4} = fullfile(paradir3,'subj04c_03_GCGT_zero.para');
	
    EXPT.subject(4).functional(26).run = 5;
    EXPT.subject(4).functional(26).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(4).functional(26).dicomdir = dicomdir3;
    EXPT.subject(4).functional(26).niftidir = niftidir3;
    EXPT.subject(4).functional(26).para{4} = fullfile(paradir3,'subj04c_05_GCGT_zero.para');
	
    EXPT.subject(4).functional(27).run = 7;
    EXPT.subject(4).functional(27).name = 'stim_sentencesAllSubset_8';
    EXPT.subject(4).functional(27).dicomdir = dicomdir3;
    EXPT.subject(4).functional(27).niftidir = niftidir3;
    EXPT.subject(4).functional(27).para{4} = fullfile(paradir3,'subj04c_07_GCGT_zero.para');
	
    EXPT.subject(4).functional(28).run = 9;
    EXPT.subject(4).functional(28).name = 'stim_TargetWords2';
    EXPT.subject(4).functional(28).dicomdir = dicomdir3;
    EXPT.subject(4).functional(28).niftidir = niftidir3;
    EXPT.subject(4).functional(28).para{4} = fullfile(paradir3,'subj04c_09_GCGT_zero.para');
	
    EXPT.subject(4).functional(29).run = 11;
    EXPT.subject(4).functional(29).name = 'stim_TargetWords3';
    EXPT.subject(4).functional(29).dicomdir = dicomdir3;
    EXPT.subject(4).functional(29).niftidir = niftidir3;
    EXPT.subject(4).functional(29).para{4} = fullfile(paradir3,'subj04c_11_GCGT_zero.para');
	
    EXPT.subject(4).functional(30).run = 5;
    EXPT.subject(4).functional(30).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(4).functional(30).dicomdir = dicomdir4;
    EXPT.subject(4).functional(30).niftidir = niftidir4;
    EXPT.subject(4).functional(30).para{4} = fullfile(paradir4,'subj04d_05_GCGT_zero.para');
	
    EXPT.subject(4).functional(31).run = 7;
    EXPT.subject(4).functional(31).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(4).functional(31).dicomdir = dicomdir4;
    EXPT.subject(4).functional(31).niftidir = niftidir4;
    EXPT.subject(4).functional(31).para{4} = fullfile(paradir4,'subj04d_07_GCGT_zero.para');
	
    EXPT.subject(4).functional(32).run = 9;
    EXPT.subject(4).functional(32).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(4).functional(32).dicomdir = dicomdir4;
    EXPT.subject(4).functional(32).niftidir = niftidir4;
    EXPT.subject(4).functional(32).para{4} = fullfile(paradir4,'subj04d_09_GCGT_zero.para');
		
    EXPT.subject(4).functional(33).run = 11;
    EXPT.subject(4).functional(33).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(4).functional(33).dicomdir = dicomdir4;
    EXPT.subject(4).functional(33).niftidir = niftidir4;
    EXPT.subject(4).functional(33).para{4} = fullfile(paradir4,'subj04d_11_GCGT_zero.para');
	
    EXPT.subject(4).functional(34).run = 13;
    EXPT.subject(4).functional(34).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(4).functional(34).dicomdir = dicomdir4;
    EXPT.subject(4).functional(34).niftidir = niftidir4;
    EXPT.subject(4).functional(34).para{4} = fullfile(paradir4,'subj04d_13_GCGT_zero.para');
	
    EXPT.subject(4).functional(35).run = 15;
    EXPT.subject(4).functional(35).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(4).functional(35).dicomdir = dicomdir4;
    EXPT.subject(4).functional(35).niftidir = niftidir4;
    EXPT.subject(4).functional(35).para{4} = fullfile(paradir4,'subj04d_15_GCGT_zero.para');
	
    EXPT.subject(4).functional(36).run = 17;
    EXPT.subject(4).functional(36).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(4).functional(36).dicomdir = dicomdir4;
    EXPT.subject(4).functional(36).niftidir = niftidir4;
    EXPT.subject(4).functional(36).para{4} = fullfile(paradir4,'subj04d_17_GCGT_zero.para');
	
    EXPT.subject(4).functional(37).run = 19;
    EXPT.subject(4).functional(37).name = 'stim_sentencesAllSubset_8';
    EXPT.subject(4).functional(37).dicomdir = dicomdir4;
    EXPT.subject(4).functional(37).niftidir = niftidir4;
    EXPT.subject(4).functional(37).para{4} = fullfile(paradir4,'subj04d_19_GCGT_zero.para');
	
    EXPT.subject(4).functional(38).run = 21;
    EXPT.subject(4).functional(38).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(4).functional(38).dicomdir = dicomdir4;
    EXPT.subject(4).functional(38).niftidir = niftidir4;
    EXPT.subject(4).functional(38).para{4} = fullfile(paradir4,'subj04d_21_GCGT_zero.para');
	
    EXPT.subject(4).functional(39).run = 23;
    EXPT.subject(4).functional(39).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(4).functional(39).dicomdir = dicomdir4;
    EXPT.subject(4).functional(39).niftidir = niftidir4;
    EXPT.subject(4).functional(39).para{4} = fullfile(paradir4,'subj04d_23_GCGT_zero.para');
	
    EXPT.subject(4).functional(40).run = 5;
    EXPT.subject(4).functional(40).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(4).functional(40).dicomdir = dicomdir5;
    EXPT.subject(4).functional(40).niftidir = niftidir5;
    EXPT.subject(4).functional(40).para{4} = fullfile(paradir5,'subj04e_05_GCGT_zero.para');
	
    EXPT.subject(4).functional(41).run = 7;
    EXPT.subject(4).functional(41).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(4).functional(41).dicomdir = dicomdir5;
    EXPT.subject(4).functional(41).niftidir = niftidir5;
    EXPT.subject(4).functional(41).para{4} = fullfile(paradir5,'subj04e_07_GCGT_zero.para');
	
    EXPT.subject(4).functional(42).run = 9;
    EXPT.subject(4).functional(42).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(4).functional(42).dicomdir = dicomdir5;
    EXPT.subject(4).functional(42).niftidir = niftidir5;
    EXPT.subject(4).functional(42).para{4} = fullfile(paradir5,'subj04e_09_GCGT_zero.para');
		
    EXPT.subject(4).functional(43).run = 11;
    EXPT.subject(4).functional(43).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(4).functional(43).dicomdir = dicomdir5;
    EXPT.subject(4).functional(43).niftidir = niftidir5;
    EXPT.subject(4).functional(43).para{4} = fullfile(paradir5,'subj04e_11_GCGT_zero.para');
	
    EXPT.subject(4).functional(44).run = 13;
    EXPT.subject(4).functional(44).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(4).functional(44).dicomdir = dicomdir5;
    EXPT.subject(4).functional(44).niftidir = niftidir5;
    EXPT.subject(4).functional(44).para{4} = fullfile(paradir5,'subj04e_13_GCGT_zero.para');
	
    EXPT.subject(4).functional(45).run = 15;
    EXPT.subject(4).functional(45).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(4).functional(45).dicomdir = dicomdir5;
    EXPT.subject(4).functional(45).niftidir = niftidir5;
    EXPT.subject(4).functional(45).para{4} = fullfile(paradir5,'subj04e_15_GCGT_zero.para');
	
    EXPT.subject(4).functional(46).run = 17;
    EXPT.subject(4).functional(46).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(4).functional(46).dicomdir = dicomdir5;
    EXPT.subject(4).functional(46).niftidir = niftidir5;
    EXPT.subject(4).functional(46).para{4} = fullfile(paradir5,'subj04e_17_GCGT_zero.para');
	
    EXPT.subject(4).functional(47).run = 19;
    EXPT.subject(4).functional(47).name = 'stim_sentencesAllSubset_8';
    EXPT.subject(4).functional(47).dicomdir = dicomdir5;
    EXPT.subject(4).functional(47).niftidir = niftidir5;
    EXPT.subject(4).functional(47).para{4} = fullfile(paradir5,'subj04e_19_GCGT_zero.para');
	
    EXPT.subject(4).functional(48).run = 21;
    EXPT.subject(4).functional(48).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(4).functional(48).dicomdir = dicomdir5;
    EXPT.subject(4).functional(48).niftidir = niftidir5;
    EXPT.subject(4).functional(48).para{4} = fullfile(paradir5,'subj04e_21_GCGT_zero.para');
	
    EXPT.subject(4).functional(49).run = 23;
    EXPT.subject(4).functional(49).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(4).functional(49).dicomdir = dicomdir5;
    EXPT.subject(4).functional(49).niftidir = niftidir5;
    EXPT.subject(4).functional(49).para{4} = fullfile(paradir5,'subj04e_23_GCGT_zero.para');
	
    EXPT.subject(4).functional(50).run = 3;
    EXPT.subject(4).functional(50).name = 'stim_TargetWords7';
    EXPT.subject(4).functional(50).dicomdir = dicomdir6;
    EXPT.subject(4).functional(50).niftidir = niftidir6;
    EXPT.subject(4).functional(50).para{4} = fullfile(paradir6,'subj04f_03_GCGT_zero.para');
	
    EXPT.subject(4).functional(51).run = 5;
    EXPT.subject(4).functional(51).name = 'stim_TargetWords8';
    EXPT.subject(4).functional(51).dicomdir = dicomdir6;
    EXPT.subject(4).functional(51).niftidir = niftidir6;
    EXPT.subject(4).functional(51).para{4} = fullfile(paradir6,'subj04f_05_GCGT_zero.para');
	
    EXPT.subject(4).functional(52).run = 7;
    EXPT.subject(4).functional(52).name = 'stim_TargetWords9';
    EXPT.subject(4).functional(52).dicomdir = dicomdir6;
    EXPT.subject(4).functional(52).niftidir = niftidir6;
    EXPT.subject(4).functional(52).para{4} = fullfile(paradir6,'subj04f_07_GCGT_zero.para');
	
    EXPT.subject(4).functional(53).run = 9;
    EXPT.subject(4).functional(53).name = 'stim_TargetWords10';
    EXPT.subject(4).functional(53).dicomdir = dicomdir6;
    EXPT.subject(4).functional(53).niftidir = niftidir6;
    EXPT.subject(4).functional(53).para{4} = fullfile(paradir6,'subj04f_09_GCGT_zero.para');
		
    EXPT.subject(4).functional(54).run = 11;
    EXPT.subject(4).functional(54).name = 'stim_TargetWords11';
    EXPT.subject(4).functional(54).dicomdir = dicomdir6;
    EXPT.subject(4).functional(54).niftidir = niftidir6;
    EXPT.subject(4).functional(54).para{4} = fullfile(paradir6,'subj04f_11_GCGT_zero.para');
	
    EXPT.subject(4).functional(55).run = 13;
    EXPT.subject(4).functional(55).name = 'stim_TargetWords12';
    EXPT.subject(4).functional(55).dicomdir = dicomdir6;
    EXPT.subject(4).functional(55).niftidir = niftidir6;
    EXPT.subject(4).functional(55).para{4} = fullfile(paradir6,'subj04f_13_GCGT_zero.para');
	
    EXPT.subject(4).functional(56).run = 15;
    EXPT.subject(4).functional(56).name = 'stim_TargetWords13';
    EXPT.subject(4).functional(56).dicomdir = dicomdir6;
    EXPT.subject(4).functional(56).niftidir = niftidir6;
    EXPT.subject(4).functional(56).para{4} = fullfile(paradir6,'subj04f_15_GCGT_zero.para');
	
    EXPT.subject(4).functional(57).run = 17;
    EXPT.subject(4).functional(57).name = 'stim_TargetWords14';
    EXPT.subject(4).functional(57).dicomdir = dicomdir6;
    EXPT.subject(4).functional(57).niftidir = niftidir6;
    EXPT.subject(4).functional(57).para{4} = fullfile(paradir6,'subj04f_17_GCGT_zero.para');
	
    EXPT.subject(4).functional(58).run = 19;
    EXPT.subject(4).functional(58).name = 'stim_TargetWords15';
    EXPT.subject(4).functional(58).dicomdir = dicomdir6;
    EXPT.subject(4).functional(58).niftidir = niftidir6;
    EXPT.subject(4).functional(58).para{4} = fullfile(paradir6,'subj04f_19_GCGT_zero.para');
	
    EXPT.subject(4).functional(59).run = 21;
    EXPT.subject(4).functional(59).name = 'stim_TargetWords16';
    EXPT.subject(4).functional(59).dicomdir = dicomdir6;
    EXPT.subject(4).functional(59).niftidir = niftidir6;
    EXPT.subject(4).functional(59).para{4} = fullfile(paradir6,'subj04f_21_GCGT_zero.para');
	
    EXPT.subject(4).functional(60).run = 23;
    EXPT.subject(4).functional(60).name = 'stim_TargetWords17';
    EXPT.subject(4).functional(60).dicomdir = dicomdir6;
    EXPT.subject(4).functional(60).niftidir = niftidir6;
    EXPT.subject(4).functional(60).para{4} = fullfile(paradir6,'subj04f_23_GCGT_zero.para');
	
    EXPT.subject(4).functional(61).run = 25;
    EXPT.subject(4).functional(61).name = 'stim_TargetWords18';
    EXPT.subject(4).functional(61).dicomdir = dicomdir6;
    EXPT.subject(4).functional(61).niftidir = niftidir6;
    EXPT.subject(4).functional(61).para{4} = fullfile(paradir6,'subj04f_25_GCGT_zero.para');
	
    %----------------------------------%
    %           SUBJECT 5              
    %----------------------------------%
    EXPT.subject(5).name = 'subj05';
    
    dicomdir1 = fullfile(EXPT.data_dir,'subj05','dicoms');
    niftidir1 = fullfile(EXPT.data_dir,'subj05','nii');
    paradir1 = fullfile(EXPT.data_dir,'subj05','onsets');
    dicomdir2 = fullfile(EXPT.data_dir,'subj05b','dicoms');
    niftidir2 = fullfile(EXPT.data_dir,'subj05b','nii');
    paradir2 = fullfile(EXPT.data_dir,'subj05b','onsets');
    dicomdir3 = fullfile(EXPT.data_dir,'subj05c','dicoms');
    niftidir3 = fullfile(EXPT.data_dir,'subj05c','nii');
    paradir3 = fullfile(EXPT.data_dir,'subj05c','onsets');
    dicomdir4 = fullfile(EXPT.data_dir,'subj05d','dicoms');
    niftidir4 = fullfile(EXPT.data_dir,'subj05d','nii');
    paradir4 = fullfile(EXPT.data_dir,'subj05d','onsets');
    dicomdir5 = fullfile(EXPT.data_dir,'subj05e','dicoms');
    niftidir5 = fullfile(EXPT.data_dir,'subj05e','nii');
    paradir5 = fullfile(EXPT.data_dir,'subj05e','onsets');
    
    EXPT.subject(5).anatomical.run = 3;
    EXPT.subject(5).anatomical.dicomdir = fullfile(EXPT.data_dir,'subj05','dicoms');
    EXPT.subject(5).anatomical.niftidir = fullfile(EXPT.data_dir,'subj05','nii');
    
    EXPT.subject(5).functional(1).run = 5;
    EXPT.subject(5).functional(1).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(5).functional(1).dicomdir = dicomdir1;
    EXPT.subject(5).functional(1).niftidir = niftidir1;
    EXPT.subject(5).functional(1).para{4} = fullfile(paradir1,'subj05_05_GCGT_zero.para');
    
    EXPT.subject(5).functional(2).run = 7;
    EXPT.subject(5).functional(2).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(5).functional(2).dicomdir = dicomdir1;
    EXPT.subject(5).functional(2).niftidir = niftidir1;
    EXPT.subject(5).functional(2).para{4} = fullfile(paradir1,'subj05_07_GCGT_zero.para');
    
    EXPT.subject(5).functional(3).run = 9;
    EXPT.subject(5).functional(3).name = 'stim_words1';
    EXPT.subject(5).functional(3).dicomdir = dicomdir1;
    EXPT.subject(5).functional(3).niftidir = niftidir1;
    EXPT.subject(5).functional(3).para{4} = fullfile(paradir1,'subj05_09_GCGT_zero.para');
    
    EXPT.subject(5).functional(4).run = 11;
    EXPT.subject(5).functional(4).name = 'stim_words2';
    EXPT.subject(5).functional(4).dicomdir = dicomdir1;
    EXPT.subject(5).functional(4).niftidir = niftidir1;
    EXPT.subject(5).functional(4).para{4} = fullfile(paradir1,'subj05_11_GCGT_zero.para');
    
    EXPT.subject(5).functional(5).run = 13;
    EXPT.subject(5).functional(5).name = 'stim_words3';
    EXPT.subject(5).functional(5).dicomdir = dicomdir1;
    EXPT.subject(5).functional(5).niftidir = niftidir1;
    EXPT.subject(5).functional(5).para{4} = fullfile(paradir1,'subj05_13_GCGT_zero.para');
    
    EXPT.subject(5).functional(6).run = 15;
    EXPT.subject(5).functional(6).name = 'LangLoc';
    EXPT.subject(5).functional(6).dicomdir = dicomdir1;
    EXPT.subject(5).functional(6).niftidir = niftidir1;
    EXPT.subject(5).functional(6).para{4} = fullfile(paradir1,'subj05_15_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(5).functional(7).run = 17;
    EXPT.subject(5).functional(7).name = 'LangLoc';
    EXPT.subject(5).functional(7).dicomdir = dicomdir1;
    EXPT.subject(5).functional(7).niftidir = niftidir1;
    EXPT.subject(5).functional(7).para{4} = fullfile(paradir1,'subj05_17_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(5).functional(8).run = 19;
    EXPT.subject(5).functional(8).name = 'stim_words4';
    EXPT.subject(5).functional(8).dicomdir = dicomdir1;
    EXPT.subject(5).functional(8).niftidir = niftidir1;
    EXPT.subject(5).functional(8).para{4} = fullfile(paradir1,'subj05_19_GCGT_zero.para');
	
    EXPT.subject(5).functional(9).run = 21;
    EXPT.subject(5).functional(9).name = 'stim_words5';
    EXPT.subject(5).functional(9).dicomdir = dicomdir1;
    EXPT.subject(5).functional(9).niftidir = niftidir1;
    EXPT.subject(5).functional(9).para{4} = fullfile(paradir1,'subj05_21_GCGT_zero.para');
	
    EXPT.subject(5).functional(10).run = 23;
    EXPT.subject(5).functional(10).name = 'stim_words6';
    EXPT.subject(5).functional(10).dicomdir = dicomdir1;
    EXPT.subject(5).functional(10).niftidir = niftidir1;
    EXPT.subject(5).functional(10).para{4} = fullfile(paradir1,'subj05_23_GCGT_zero.para');
	
    EXPT.subject(5).functional(11).run = 25;
    EXPT.subject(5).functional(11).name = 'stim_words7';
    EXPT.subject(5).functional(11).dicomdir = dicomdir1;
    EXPT.subject(5).functional(11).niftidir = niftidir1;
    EXPT.subject(5).functional(11).para{4} = fullfile(paradir1,'subj05_25_GCGT_zero.para');
	
    EXPT.subject(5).functional(12).run = 5;
    EXPT.subject(5).functional(12).name = 'stim_reversibles1';
    EXPT.subject(5).functional(12).dicomdir = dicomdir2;
    EXPT.subject(5).functional(12).niftidir = niftidir2;
    EXPT.subject(5).functional(12).para{4} = fullfile(paradir2,'subj05b_05_GCGT_zero.para');
    
    EXPT.subject(5).functional(13).run = 7;
    EXPT.subject(5).functional(13).name = 'stim_reversibles2';
    EXPT.subject(5).functional(13).dicomdir = dicomdir2;
    EXPT.subject(5).functional(13).niftidir = niftidir2;
    EXPT.subject(5).functional(13).para{4} = fullfile(paradir2,'subj05b_07_GCGT_zero.para');
    
    EXPT.subject(5).functional(14).run = 9;
    EXPT.subject(5).functional(14).name = 'stim_reversibles3';
    EXPT.subject(5).functional(14).dicomdir = dicomdir2;
    EXPT.subject(5).functional(14).niftidir = niftidir2;
    EXPT.subject(5).functional(14).para{4} = fullfile(paradir2,'subj05b_09_GCGT_zero.para');
    
    EXPT.subject(5).functional(15).run = 11;
    EXPT.subject(5).functional(15).name = 'stim_reversibles4';
    EXPT.subject(5).functional(15).dicomdir = dicomdir2;
    EXPT.subject(5).functional(15).niftidir = niftidir2;
    EXPT.subject(5).functional(15).para{4} = fullfile(paradir2,'subj05b_11_GCGT_zero.para');
    
    EXPT.subject(5).functional(16).run = 13;
    EXPT.subject(5).functional(16).name = 'stim_reversibles5';
    EXPT.subject(5).functional(16).dicomdir = dicomdir2;
    EXPT.subject(5).functional(16).niftidir = niftidir2;
    EXPT.subject(5).functional(16).para{4} = fullfile(paradir2,'subj05b_13_GCGT_zero.para');
    
    EXPT.subject(5).functional(17).run = 15;
    EXPT.subject(5).functional(17).name = 'stim_reversibles6';
    EXPT.subject(5).functional(17).dicomdir = dicomdir2;
    EXPT.subject(5).functional(17).niftidir = niftidir2;
    EXPT.subject(5).functional(17).para{4} = fullfile(paradir2,'subj05b_15_GCGT_zero.para');
    
    EXPT.subject(5).functional(18).run = 17;
    EXPT.subject(5).functional(18).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(5).functional(18).dicomdir = dicomdir2;
    EXPT.subject(5).functional(18).niftidir = niftidir2;
    EXPT.subject(5).functional(18).para{4} = fullfile(paradir2,'subj05b_17_GCGT_zero.para');
    
    EXPT.subject(5).functional(19).run = 19;
    EXPT.subject(5).functional(19).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(5).functional(19).dicomdir = dicomdir2;
    EXPT.subject(5).functional(19).niftidir = niftidir2;
    EXPT.subject(5).functional(19).para{4} = fullfile(paradir2,'subj05b_19_GCGT_zero.para');
	
    EXPT.subject(5).functional(20).run = 21;
    EXPT.subject(5).functional(20).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(5).functional(20).dicomdir = dicomdir2;
    EXPT.subject(5).functional(20).niftidir = niftidir2;
    EXPT.subject(5).functional(20).para{4} = fullfile(paradir2,'subj05b_21_GCGT_zero.para');
	
    EXPT.subject(5).functional(21).run = 23;
    EXPT.subject(5).functional(21).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(5).functional(21).dicomdir = dicomdir2;
    EXPT.subject(5).functional(21).niftidir = niftidir2;
    EXPT.subject(5).functional(21).para{4} = fullfile(paradir2,'subj05b_23_GCGT_zero.para');
	
    EXPT.subject(5).functional(22).run = 25;
    EXPT.subject(5).functional(22).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(5).functional(22).dicomdir = dicomdir2;
    EXPT.subject(5).functional(22).niftidir = niftidir2;
    EXPT.subject(5).functional(22).para{4} = fullfile(paradir2,'subj05b_25_GCGT_zero.para');
		
    EXPT.subject(5).functional(23).run = 27;
    EXPT.subject(5).functional(23).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(5).functional(23).dicomdir = dicomdir2;
    EXPT.subject(5).functional(23).niftidir = niftidir2;
    EXPT.subject(5).functional(23).para{4} = fullfile(paradir2,'subj05b_27_GCGT_zero.para');
	  
    EXPT.subject(5).functional(24).run = 29;
    EXPT.subject(5).functional(24).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(5).functional(24).dicomdir = dicomdir2;
    EXPT.subject(5).functional(24).niftidir = niftidir2;
    EXPT.subject(5).functional(24).para{4} = fullfile(paradir2,'subj05b_29_GCGT_zero.para');
		
    EXPT.subject(5).functional(25).run = 31;
    EXPT.subject(5).functional(25).name = 'stim_sentencesAllSubset_8';
    EXPT.subject(5).functional(25).dicomdir = dicomdir2;
    EXPT.subject(5).functional(25).niftidir = niftidir2;
    EXPT.subject(5).functional(25).para{4} = fullfile(paradir2,'subj05b_31_GCGT_zero.para');
	  
    EXPT.subject(5).functional(26).run = 5;
    EXPT.subject(5).functional(26).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(5).functional(26).dicomdir = dicomdir3;
    EXPT.subject(5).functional(26).niftidir = niftidir3;
    EXPT.subject(5).functional(26).para{4} = fullfile(paradir3,'subj05c_05_GCGT_zero.para');
	
    EXPT.subject(5).functional(27).run = 7;
    EXPT.subject(5).functional(27).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(5).functional(27).dicomdir = dicomdir3;
    EXPT.subject(5).functional(27).niftidir = niftidir3;
    EXPT.subject(5).functional(27).para{4} = fullfile(paradir3,'subj05c_07_GCGT_zero.para');
	
    EXPT.subject(5).functional(28).run = 9;
    EXPT.subject(5).functional(28).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(5).functional(28).dicomdir = dicomdir3;
    EXPT.subject(5).functional(28).niftidir = niftidir3;
    EXPT.subject(5).functional(28).para{4} = fullfile(paradir3,'subj05c_09_GCGT_zero.para');
		
    EXPT.subject(5).functional(29).run = 11;
    EXPT.subject(5).functional(29).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(5).functional(29).dicomdir = dicomdir3;
    EXPT.subject(5).functional(29).niftidir = niftidir3;
    EXPT.subject(5).functional(29).para{4} = fullfile(paradir3,'subj05c_11_GCGT_zero.para');
	
    EXPT.subject(5).functional(30).run = 13;
    EXPT.subject(5).functional(30).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(5).functional(30).dicomdir = dicomdir3;
    EXPT.subject(5).functional(30).niftidir = niftidir3;
    EXPT.subject(5).functional(30).para{4} = fullfile(paradir3,'subj05c_13_GCGT_zero.para');
	
    EXPT.subject(5).functional(31).run = 15;
    EXPT.subject(5).functional(31).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(5).functional(31).dicomdir = dicomdir3;
    EXPT.subject(5).functional(31).niftidir = niftidir3;
    EXPT.subject(5).functional(31).para{4} = fullfile(paradir3,'subj05c_15_GCGT_zero.para');
	
    EXPT.subject(5).functional(32).run = 17;
    EXPT.subject(5).functional(32).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(5).functional(32).dicomdir = dicomdir3;
    EXPT.subject(5).functional(32).niftidir = niftidir3;
    EXPT.subject(5).functional(32).para{4} = fullfile(paradir3,'subj05c_17_GCGT_zero.para');
	
    EXPT.subject(5).functional(33).run = 19;
    EXPT.subject(5).functional(33).name = 'stim_sentencesAllSubset_8';
    EXPT.subject(5).functional(33).dicomdir = dicomdir3;
    EXPT.subject(5).functional(33).niftidir = niftidir3;
    EXPT.subject(5).functional(33).para{4} = fullfile(paradir3,'subj05c_19_GCGT_zero.para');
	
    EXPT.subject(5).functional(34).run = 21;
    EXPT.subject(5).functional(34).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(5).functional(34).dicomdir = dicomdir3;
    EXPT.subject(5).functional(34).niftidir = niftidir3;
    EXPT.subject(5).functional(34).para{4} = fullfile(paradir3,'subj05c_21_GCGT_zero.para');
	
    EXPT.subject(5).functional(35).run = 23;
    EXPT.subject(5).functional(35).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(5).functional(35).dicomdir = dicomdir3;
    EXPT.subject(5).functional(35).niftidir = niftidir3;
    EXPT.subject(5).functional(35).para{4} = fullfile(paradir3,'subj05c_23_GCGT_zero.para');
	
    EXPT.subject(5).functional(36).run = 25;
    EXPT.subject(5).functional(36).name = 'stim_TargetWords1';
    EXPT.subject(5).functional(36).dicomdir = dicomdir3;
    EXPT.subject(5).functional(36).niftidir = niftidir3;
    EXPT.subject(5).functional(36).para{4} = fullfile(paradir3,'subj05c_25_GCGT_zero.para');
	
    EXPT.subject(5).functional(37).run = 27;
    EXPT.subject(5).functional(37).name = 'stim_TargetWords2';
    EXPT.subject(5).functional(37).dicomdir = dicomdir3;
    EXPT.subject(5).functional(37).niftidir = niftidir3;
    EXPT.subject(5).functional(37).para{4} = fullfile(paradir3,'subj05c_27_GCGT_zero.para');
	
	EXPT.subject(5).functional(38).run = 3;
    EXPT.subject(5).functional(38).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(5).functional(38).dicomdir = dicomdir4;
    EXPT.subject(5).functional(38).niftidir = niftidir4;
    EXPT.subject(5).functional(38).para{4} = fullfile(paradir4,'subj05d_03_GCGT_zero.para');
	
    EXPT.subject(5).functional(39).run = 5;
    EXPT.subject(5).functional(39).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(5).functional(39).dicomdir = dicomdir4;
    EXPT.subject(5).functional(39).niftidir = niftidir4;
    EXPT.subject(5).functional(39).para{4} = fullfile(paradir4,'subj05d_05_GCGT_zero.para');
	
    EXPT.subject(5).functional(40).run = 7;
    EXPT.subject(5).functional(40).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(5).functional(40).dicomdir = dicomdir4;
    EXPT.subject(5).functional(40).niftidir = niftidir4;
    EXPT.subject(5).functional(40).para{4} = fullfile(paradir4,'subj05d_07_GCGT_zero.para');
	
    EXPT.subject(5).functional(41).run = 9;
    EXPT.subject(5).functional(41).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(5).functional(41).dicomdir = dicomdir4;
    EXPT.subject(5).functional(41).niftidir = niftidir4;
    EXPT.subject(5).functional(41).para{4} = fullfile(paradir4,'subj05d_09_GCGT_zero.para');
		
    EXPT.subject(5).functional(42).run = 11;
    EXPT.subject(5).functional(42).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(5).functional(42).dicomdir = dicomdir4;
    EXPT.subject(5).functional(42).niftidir = niftidir4;
    EXPT.subject(5).functional(42).para{4} = fullfile(paradir4,'subj05d_11_GCGT_zero.para');
	
    EXPT.subject(5).functional(43).run = 13;
    EXPT.subject(5).functional(43).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(5).functional(43).dicomdir = dicomdir4;
    EXPT.subject(5).functional(43).niftidir = niftidir4;
    EXPT.subject(5).functional(43).para{4} = fullfile(paradir4,'subj05d_13_GCGT_zero.para');
	
    EXPT.subject(5).functional(44).run = 15;
    EXPT.subject(5).functional(44).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(5).functional(44).dicomdir = dicomdir4;
    EXPT.subject(5).functional(44).niftidir = niftidir4;
    EXPT.subject(5).functional(44).para{4} = fullfile(paradir4,'subj05d_15_GCGT_zero.para');
	
    EXPT.subject(5).functional(45).run = 17;
    EXPT.subject(5).functional(45).name = 'stim_sentencesAllSubset_8';
    EXPT.subject(5).functional(45).dicomdir = dicomdir4;
    EXPT.subject(5).functional(45).niftidir = niftidir4;
    EXPT.subject(5).functional(45).para{4} = fullfile(paradir4,'subj05d_17_GCGT_zero.para');
	
    EXPT.subject(5).functional(46).run = 19;
    EXPT.subject(5).functional(46).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(5).functional(46).dicomdir = dicomdir4;
    EXPT.subject(5).functional(46).niftidir = niftidir4;
    EXPT.subject(5).functional(46).para{4} = fullfile(paradir4,'subj05d_19_GCGT_zero.para');
	
    EXPT.subject(5).functional(47).run = 21;
    EXPT.subject(5).functional(47).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(5).functional(47).dicomdir = dicomdir4;
    EXPT.subject(5).functional(47).niftidir = niftidir4;
    EXPT.subject(5).functional(47).para{4} = fullfile(paradir4,'subj05d_21_GCGT_zero.para');
	
    EXPT.subject(5).functional(48).run = 23;
    EXPT.subject(5).functional(48).name = 'stim_TargetWords3';
    EXPT.subject(5).functional(48).dicomdir = dicomdir4;
    EXPT.subject(5).functional(48).niftidir = niftidir4;
    EXPT.subject(5).functional(48).para{4} = fullfile(paradir4,'subj05d_23_GCGT_zero.para');
	
    EXPT.subject(5).functional(49).run = 25;
    EXPT.subject(5).functional(49).name = 'stim_TargetWords4';
    EXPT.subject(5).functional(49).dicomdir = dicomdir4;
    EXPT.subject(5).functional(49).niftidir = niftidir4;
    EXPT.subject(5).functional(49).para{4} = fullfile(paradir4,'subj05d_25_GCGT_zero.para');
	
	EXPT.subject(5).functional(50).run = 3;
    EXPT.subject(5).functional(50).name = 'stim_TargetWords7';
    EXPT.subject(5).functional(50).dicomdir = dicomdir5;
    EXPT.subject(5).functional(50).niftidir = niftidir5;
    EXPT.subject(5).functional(50).para{4} = fullfile(paradir5,'subj05e_03_GCGT_zero.para');
	
    EXPT.subject(5).functional(51).run = 5;
    EXPT.subject(5).functional(51).name = 'stim_TargetWords8';
    EXPT.subject(5).functional(51).dicomdir = dicomdir5;
    EXPT.subject(5).functional(51).niftidir = niftidir5;
    EXPT.subject(5).functional(51).para{4} = fullfile(paradir5,'subj05e_05_GCGT_zero.para');
	
    EXPT.subject(5).functional(52).run = 7;
    EXPT.subject(5).functional(52).name = 'stim_TargetWords9';
    EXPT.subject(5).functional(52).dicomdir = dicomdir5;
    EXPT.subject(5).functional(52).niftidir = niftidir5;
    EXPT.subject(5).functional(52).para{4} = fullfile(paradir5,'subj05e_07_GCGT_zero.para');
	
    EXPT.subject(5).functional(53).run = 9;
    EXPT.subject(5).functional(53).name = 'stim_TargetWords10';
    EXPT.subject(5).functional(53).dicomdir = dicomdir5;
    EXPT.subject(5).functional(53).niftidir = niftidir5;
    EXPT.subject(5).functional(53).para{4} = fullfile(paradir5,'subj05e_09_GCGT_zero.para');
		
    EXPT.subject(5).functional(54).run = 11;
    EXPT.subject(5).functional(54).name = 'stim_TargetWords11';
    EXPT.subject(5).functional(54).dicomdir = dicomdir5;
    EXPT.subject(5).functional(54).niftidir = niftidir5;
    EXPT.subject(5).functional(54).para{4} = fullfile(paradir5,'subj05e_11_GCGT_zero.para');
	
    EXPT.subject(5).functional(55).run = 13;
    EXPT.subject(5).functional(55).name = 'stim_TargetWords12';
    EXPT.subject(5).functional(55).dicomdir = dicomdir5;
    EXPT.subject(5).functional(55).niftidir = niftidir5;
    EXPT.subject(5).functional(55).para{4} = fullfile(paradir5,'subj05e_13_GCGT_zero.para');
	
    EXPT.subject(5).functional(56).run = 15;
    EXPT.subject(5).functional(56).name = 'stim_TargetWords13';
    EXPT.subject(5).functional(56).dicomdir = dicomdir5;
    EXPT.subject(5).functional(56).niftidir = niftidir5;
    EXPT.subject(5).functional(56).para{4} = fullfile(paradir5,'subj05e_15_GCGT_zero.para');
	
    EXPT.subject(5).functional(57).run = 17;
    EXPT.subject(5).functional(57).name = 'stim_TargetWords14';
    EXPT.subject(5).functional(57).dicomdir = dicomdir5;
    EXPT.subject(5).functional(57).niftidir = niftidir5;
    EXPT.subject(5).functional(57).para{4} = fullfile(paradir5,'subj05e_17_GCGT_zero.para');
	
    EXPT.subject(5).functional(58).run = 19;
    EXPT.subject(5).functional(58).name = 'stim_TargetWords15';
    EXPT.subject(5).functional(58).dicomdir = dicomdir5;
    EXPT.subject(5).functional(58).niftidir = niftidir5;
    EXPT.subject(5).functional(58).para{4} = fullfile(paradir5,'subj05e_19_GCGT_zero.para');
	
    EXPT.subject(5).functional(59).run = 21;
    EXPT.subject(5).functional(59).name = 'stim_TargetWords16';
    EXPT.subject(5).functional(59).dicomdir = dicomdir5;
    EXPT.subject(5).functional(59).niftidir = niftidir5;
    EXPT.subject(5).functional(59).para{4} = fullfile(paradir5,'subj05e_21_GCGT_zero.para');
	
    EXPT.subject(5).functional(60).run = 23;
    EXPT.subject(5).functional(60).name = 'stim_TargetWords17';
    EXPT.subject(5).functional(60).dicomdir = dicomdir5;
    EXPT.subject(5).functional(60).niftidir = niftidir5;
    EXPT.subject(5).functional(60).para{4} = fullfile(paradir5,'subj05e_23_GCGT_zero.para');
	
    EXPT.subject(5).functional(61).run = 25;
    EXPT.subject(5).functional(61).name = 'stim_TargetWords18';
    EXPT.subject(5).functional(61).dicomdir = dicomdir5;
    EXPT.subject(5).functional(61).niftidir = niftidir5;
    EXPT.subject(5).functional(61).para{4} = fullfile(paradir5,'subj05e_25_GCGT_zero.para');
	
    %----------------------------------%
    %           SUBJECT 6              
    %----------------------------------%
    EXPT.subject(6).name = 'subj06';
    
    dicomdir1 = fullfile(EXPT.data_dir,'subj06','dicoms');
    niftidir1 = fullfile(EXPT.data_dir,'subj06','nii');
    paradir1 = fullfile(EXPT.data_dir,'subj06','onsets');
    dicomdir2 = fullfile(EXPT.data_dir,'subj06b','dicoms');
    niftidir2 = fullfile(EXPT.data_dir,'subj06b','nii');
    paradir2 = fullfile(EXPT.data_dir,'subj06b','onsets');
    dicomdir3 = fullfile(EXPT.data_dir,'subj06c','dicoms');
    niftidir3 = fullfile(EXPT.data_dir,'subj06c','nii');
    paradir3 = fullfile(EXPT.data_dir,'subj06c','onsets');
        
    EXPT.subject(6).anatomical.run = 4;
    EXPT.subject(6).anatomical.dicomdir = fullfile('/mindhive/nklab/projects/MACKEREL/data01','subj02','dicoms_anatomical');
	EXPT.subject(6).anatomical.niftidir = fullfile(EXPT.data_dir,'subj06','anatomical');
	
    EXPT.subject(6).functional(1).run = 3;
    EXPT.subject(6).functional(1).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(6).functional(1).dicomdir = dicomdir1;
    EXPT.subject(6).functional(1).niftidir = niftidir1;
    EXPT.subject(6).functional(1).para{4} = fullfile(paradir1,'subj06_03_GCGT_zero.para');
    
    EXPT.subject(6).functional(2).run = 5;
    EXPT.subject(6).functional(2).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(6).functional(2).dicomdir = dicomdir1;
    EXPT.subject(6).functional(2).niftidir = niftidir1;
    EXPT.subject(6).functional(2).para{4} = fullfile(paradir1,'subj06_05_GCGT_zero.para');
    
    EXPT.subject(6).functional(3).run = 07;
    EXPT.subject(6).functional(3).name = 'LangLoc';
    EXPT.subject(6).functional(3).dicomdir = dicomdir1;
    EXPT.subject(6).functional(3).niftidir = niftidir1;
    EXPT.subject(6).functional(3).para{4} = fullfile(paradir1,'subj06_07_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(6).functional(4).run = 09;
    EXPT.subject(6).functional(4).name = 'LangLoc';
    EXPT.subject(6).functional(4).dicomdir = dicomdir1;
    EXPT.subject(6).functional(4).niftidir = niftidir1;
    EXPT.subject(6).functional(4).para{4} = fullfile(paradir1,'subj06_09_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(6).functional(5).run = 11;
    EXPT.subject(6).functional(5).name = 'stim_words1';
    EXPT.subject(6).functional(5).dicomdir = dicomdir1;
    EXPT.subject(6).functional(5).niftidir = niftidir1;
    EXPT.subject(6).functional(5).para{4} = fullfile(paradir1,'subj06_11_GCGT_zero.para');
	
    EXPT.subject(6).functional(6).run = 13;
    EXPT.subject(6).functional(6).name = 'stim_words2';
    EXPT.subject(6).functional(6).dicomdir = dicomdir1;
    EXPT.subject(6).functional(6).niftidir = niftidir1;
    EXPT.subject(6).functional(6).para{4} = fullfile(paradir1,'subj06_13_GCGT_zero.para');
	
    EXPT.subject(6).functional(7).run = 3;
    EXPT.subject(6).functional(7).name = 'stim_reversibles_1';
    EXPT.subject(6).functional(7).dicomdir = dicomdir2;
    EXPT.subject(6).functional(7).niftidir = niftidir2;
    EXPT.subject(6).functional(7).para{4} = fullfile(paradir2,'subj06b_03_GCGT_zero.para');
    
    EXPT.subject(6).functional(8).run = 5;
    EXPT.subject(6).functional(8).name = 'stim_reversibles_2';
    EXPT.subject(6).functional(8).dicomdir = dicomdir2;
    EXPT.subject(6).functional(8).niftidir = niftidir2;
    EXPT.subject(6).functional(8).para{4} = fullfile(paradir2,'subj06b_05_GCGT_zero.para');
    
    EXPT.subject(6).functional(9).run = 07;
    EXPT.subject(6).functional(9).name = 'stim_reversibles_3';
    EXPT.subject(6).functional(9).dicomdir = dicomdir2;
    EXPT.subject(6).functional(9).niftidir = niftidir2;
    EXPT.subject(6).functional(9).para{4} = fullfile(paradir2,'subj06b_07_GCGT_zero.para');
    
    EXPT.subject(6).functional(10).run = 09;
    EXPT.subject(6).functional(10).name = 'stim_reversibles_4';
    EXPT.subject(6).functional(10).dicomdir = dicomdir2;
    EXPT.subject(6).functional(10).niftidir = niftidir2;
    EXPT.subject(6).functional(10).para{4} = fullfile(paradir2,'subj06b_09_GCGT_zero.para');
    
    EXPT.subject(6).functional(11).run = 11;
    EXPT.subject(6).functional(11).name = 'stim_reversibles_5';
    EXPT.subject(6).functional(11).dicomdir = dicomdir2;
    EXPT.subject(6).functional(11).niftidir = niftidir2;
    EXPT.subject(6).functional(11).para{4} = fullfile(paradir2,'subj06b_11_GCGT_zero.para');
	
    EXPT.subject(6).functional(12).run = 13;
    EXPT.subject(6).functional(12).name = 'stim_reversibles_6';
    EXPT.subject(6).functional(12).dicomdir = dicomdir2;
    EXPT.subject(6).functional(12).niftidir = niftidir2;
    EXPT.subject(6).functional(12).para{4} = fullfile(paradir2,'subj06b_13_GCGT_zero.para');
	
    EXPT.subject(6).functional(13).run = 3;
    EXPT.subject(6).functional(13).name = 'stim_words3';
    EXPT.subject(6).functional(13).dicomdir = dicomdir3;
    EXPT.subject(6).functional(13).niftidir = niftidir3;
    EXPT.subject(6).functional(13).para{4} = fullfile(paradir3,'subj06c_03_GCGT_zero.para');
    
    EXPT.subject(6).functional(14).run = 5;
    EXPT.subject(6).functional(14).name = 'stim_words4';
    EXPT.subject(6).functional(14).dicomdir = dicomdir3;
    EXPT.subject(6).functional(14).niftidir = niftidir3;
    EXPT.subject(6).functional(14).para{4} = fullfile(paradir3,'subj06c_05_GCGT_zero.para');
    
    EXPT.subject(6).functional(15).run = 07;
    EXPT.subject(6).functional(15).name = 'stim_words5';
    EXPT.subject(6).functional(15).dicomdir = dicomdir3;
    EXPT.subject(6).functional(15).niftidir = niftidir3;
    EXPT.subject(6).functional(15).para{4} = fullfile(paradir3,'subj06c_07_GCGT_zero.para');
    
    EXPT.subject(6).functional(16).run = 09;
    EXPT.subject(6).functional(16).name = 'stim_words6';
    EXPT.subject(6).functional(16).dicomdir = dicomdir3;
    EXPT.subject(6).functional(16).niftidir = niftidir3;
    EXPT.subject(6).functional(16).para{4} = fullfile(paradir3,'subj06c_09_GCGT_zero.para');
    
    EXPT.subject(6).functional(17).run = 11;
    EXPT.subject(6).functional(17).name = 'stim_words7';
    EXPT.subject(6).functional(17).dicomdir = dicomdir3;
    EXPT.subject(6).functional(17).niftidir = niftidir3;
    EXPT.subject(6).functional(17).para{4} = fullfile(paradir3,'subj06c_11_GCGT_zero.para');
	
    EXPT.subject(6).functional(18).run = 13;
    EXPT.subject(6).functional(18).name = 'stim_words8';
    EXPT.subject(6).functional(18).dicomdir = dicomdir3;
    EXPT.subject(6).functional(18).niftidir = niftidir3;
    EXPT.subject(6).functional(18).para{4} = fullfile(paradir3,'subj06c_13_GCGT_zero.para');
	
    EXPT.subject(6).functional(19).run = 15;
    EXPT.subject(6).functional(19).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(6).functional(19).dicomdir = dicomdir3;
    EXPT.subject(6).functional(19).niftidir = niftidir3;
    EXPT.subject(6).functional(19).para{4} = fullfile(paradir3,'subj06c_15_GCGT_zero.para');
    
    EXPT.subject(6).functional(20).run = 17;
    EXPT.subject(6).functional(20).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(6).functional(20).dicomdir = dicomdir3;
    EXPT.subject(6).functional(20).niftidir = niftidir3;
    EXPT.subject(6).functional(20).para{4} = fullfile(paradir3,'subj06c_17_GCGT_zero.para');
    
    EXPT.subject(6).functional(21).run = 19;
    EXPT.subject(6).functional(21).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(6).functional(21).dicomdir = dicomdir3;
    EXPT.subject(6).functional(21).niftidir = niftidir3;
    EXPT.subject(6).functional(21).para{4} = fullfile(paradir3,'subj06c_19_GCGT_zero.para');
    
    EXPT.subject(6).functional(22).run = 21;
    EXPT.subject(6).functional(22).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(6).functional(22).dicomdir = dicomdir3;
    EXPT.subject(6).functional(22).niftidir = niftidir3;
    EXPT.subject(6).functional(22).para{4} = fullfile(paradir3,'subj06c_21_GCGT_zero.para');
    
    %----------------------------------%
    %           SUBJECT 7              
    %----------------------------------%
    EXPT.subject(7).name = 'subj07';
    
    dicomdir1 = fullfile(EXPT.data_dir,'subj07','dicoms');
    niftidir1 = fullfile(EXPT.data_dir,'subj07','nii');
    paradir1 = fullfile(EXPT.data_dir,'subj07','onsets');
	dicomdir2 = fullfile(EXPT.data_dir,'subj07b','dicoms');
    niftidir2 = fullfile(EXPT.data_dir,'subj07b','nii');
    paradir2 = fullfile(EXPT.data_dir,'subj07b','onsets');
	dicomdir3 = fullfile(EXPT.data_dir,'subj07c','dicoms');
    niftidir3 = fullfile(EXPT.data_dir,'subj07c','nii');
    paradir3 = fullfile(EXPT.data_dir,'subj07c','onsets');
	
    EXPT.subject(7).anatomical.run = 5;
    EXPT.subject(7).anatomical.dicomdir = fullfile('/mindhive/nklab/projects/MACKEREL/data01','subj01','dicoms');
	EXPT.subject(7).anatomical.niftidir = fullfile(EXPT.data_dir,'subj07','anatomical');
	
    EXPT.subject(7).functional(1).run = 3;
    EXPT.subject(7).functional(1).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(7).functional(1).dicomdir = dicomdir1;
    EXPT.subject(7).functional(1).niftidir = niftidir1;
    EXPT.subject(7).functional(1).para{4} = fullfile(paradir1,'subj07_03_GCGT_zero.para');
    
    EXPT.subject(7).functional(2).run = 5;
    EXPT.subject(7).functional(2).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(7).functional(2).dicomdir = dicomdir1;
    EXPT.subject(7).functional(2).niftidir = niftidir1;
    EXPT.subject(7).functional(2).para{4} = fullfile(paradir1,'subj07_05_GCGT_zero.para');
    
    EXPT.subject(7).functional(3).run = 7;
    EXPT.subject(7).functional(3).name = 'stim_words1';
    EXPT.subject(7).functional(3).dicomdir = dicomdir1;
    EXPT.subject(7).functional(3).niftidir = niftidir1;
    EXPT.subject(7).functional(3).para{4} = fullfile(paradir1,'subj07_07_GCGT_zero.para');
    
    EXPT.subject(7).functional(4).run = 9;
    EXPT.subject(7).functional(4).name = 'stim_words2';
    EXPT.subject(7).functional(4).dicomdir = dicomdir1;
    EXPT.subject(7).functional(4).niftidir = niftidir1;
    EXPT.subject(7).functional(4).para{4} = fullfile(paradir1,'subj07_09_GCGT_zero.para');
    
    EXPT.subject(7).functional(5).run = 11;
    EXPT.subject(7).functional(5).name = 'stim_words3';
    EXPT.subject(7).functional(5).dicomdir = dicomdir1;
    EXPT.subject(7).functional(5).niftidir = niftidir1;
    EXPT.subject(7).functional(5).para{4} = fullfile(paradir1,'subj07_11_GCGT_zero.para');
    
    EXPT.subject(7).functional(6).run = 13;
    EXPT.subject(7).functional(6).name = 'LangLoc';
    EXPT.subject(7).functional(6).dicomdir = dicomdir1;
    EXPT.subject(7).functional(6).niftidir = niftidir1;
    EXPT.subject(7).functional(6).para{4} = fullfile(paradir1,'subj07_13_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(7).functional(7).run = 15;
    EXPT.subject(7).functional(7).name = 'LangLoc';
    EXPT.subject(7).functional(7).dicomdir = dicomdir1;
    EXPT.subject(7).functional(7).niftidir = niftidir1;
    EXPT.subject(7).functional(7).para{4} = fullfile(paradir1,'subj07_15_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(7).functional(8).run = 17;
    EXPT.subject(7).functional(8).name = 'stim_words4';
    EXPT.subject(7).functional(8).dicomdir = dicomdir1;
    EXPT.subject(7).functional(8).niftidir = niftidir1;
    EXPT.subject(7).functional(8).para{4} = fullfile(paradir1,'subj07_17_GCGT_zero.para');
	
    EXPT.subject(7).functional(9).run = 19;
    EXPT.subject(7).functional(9).name = 'stim_words5';
    EXPT.subject(7).functional(9).dicomdir = dicomdir1;
    EXPT.subject(7).functional(9).niftidir = niftidir1;
    EXPT.subject(7).functional(9).para{4} = fullfile(paradir1,'subj07_19_GCGT_zero.para');
	
    EXPT.subject(7).functional(10).run = 21;
    EXPT.subject(7).functional(10).name = 'stim_words6';
    EXPT.subject(7).functional(10).dicomdir = dicomdir1;
    EXPT.subject(7).functional(10).niftidir = niftidir1;
    EXPT.subject(7).functional(10).para{4} = fullfile(paradir1,'subj07_21_GCGT_zero.para');
	
    EXPT.subject(7).functional(11).run = 23;
    EXPT.subject(7).functional(11).name = 'stim_words7';
    EXPT.subject(7).functional(11).dicomdir = dicomdir1;
    EXPT.subject(7).functional(11).niftidir = niftidir1;
    EXPT.subject(7).functional(11).para{4} = fullfile(paradir1,'subj07_23_GCGT_zero.para');
		
    EXPT.subject(7).functional(12).run = 25;
    EXPT.subject(7).functional(12).name = 'stim_words8';
    EXPT.subject(7).functional(12).dicomdir = dicomdir1;
    EXPT.subject(7).functional(12).niftidir = niftidir1;
    EXPT.subject(7).functional(12).para{4} = fullfile(paradir1,'subj07_25_GCGT_zero.para');
	  
    EXPT.subject(7).functional(13).run = 3;
    EXPT.subject(7).functional(13).name = 'stim_reversibles_1';
    EXPT.subject(7).functional(13).dicomdir = dicomdir2;
    EXPT.subject(7).functional(13).niftidir = niftidir2;
    EXPT.subject(7).functional(13).para{4} = fullfile(paradir2,'subj07b_03_GCGT_zero.para');
    
    EXPT.subject(7).functional(14).run = 5;
    EXPT.subject(7).functional(14).name = 'stim_reversibles_2';
    EXPT.subject(7).functional(14).dicomdir = dicomdir2;
    EXPT.subject(7).functional(14).niftidir = niftidir2;
    EXPT.subject(7).functional(14).para{4} = fullfile(paradir2,'subj07b_05_GCGT_zero.para');
    
    EXPT.subject(7).functional(15).run = 7;
    EXPT.subject(7).functional(15).name = 'stim_reversibles_3';
    EXPT.subject(7).functional(15).dicomdir = dicomdir2;
    EXPT.subject(7).functional(15).niftidir = niftidir2;
    EXPT.subject(7).functional(15).para{4} = fullfile(paradir2,'subj07b_07_GCGT_zero.para');
    
    EXPT.subject(7).functional(16).run = 9;
    EXPT.subject(7).functional(16).name = 'stim_reversibles_4';
    EXPT.subject(7).functional(16).dicomdir = dicomdir2;
    EXPT.subject(7).functional(16).niftidir = niftidir2;
    EXPT.subject(7).functional(16).para{4} = fullfile(paradir2,'subj07b_09_GCGT_zero.para');
    
    EXPT.subject(7).functional(17).run = 11;
    EXPT.subject(7).functional(17).name = 'stim_reversibles_5';
    EXPT.subject(7).functional(17).dicomdir = dicomdir2;
    EXPT.subject(7).functional(17).niftidir = niftidir2;
    EXPT.subject(7).functional(17).para{4} = fullfile(paradir2,'subj07b_11_GCGT_zero.para');
    
    EXPT.subject(7).functional(18).run = 13;
    EXPT.subject(7).functional(18).name = 'stim_reversibles_6';
    EXPT.subject(7).functional(18).dicomdir = dicomdir2;
    EXPT.subject(7).functional(18).niftidir = niftidir2;
    EXPT.subject(7).functional(18).para{4} = fullfile(paradir2,'subj07b_13_GCGT_zero.para');
    
    EXPT.subject(7).functional(19).run = 15;
    EXPT.subject(7).functional(19).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(7).functional(19).dicomdir = dicomdir2;
    EXPT.subject(7).functional(19).niftidir = niftidir2;
    EXPT.subject(7).functional(19).para{4} = fullfile(paradir2,'subj07b_15_GCGT_zero.para');
    
    EXPT.subject(7).functional(20).run = 17;
    EXPT.subject(7).functional(20).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(7).functional(20).dicomdir = dicomdir2;
    EXPT.subject(7).functional(20).niftidir = niftidir2;
    EXPT.subject(7).functional(20).para{4} = fullfile(paradir2,'subj07b_17_GCGT_zero.para');
	
    EXPT.subject(7).functional(21).run = 19;
    EXPT.subject(7).functional(21).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(7).functional(21).dicomdir = dicomdir2;
    EXPT.subject(7).functional(21).niftidir = niftidir2;
    EXPT.subject(7).functional(21).para{4} = fullfile(paradir2,'subj07b_19_GCGT_zero.para');
	
    EXPT.subject(7).functional(22).run = 21;
    EXPT.subject(7).functional(22).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(7).functional(22).dicomdir = dicomdir2;
    EXPT.subject(7).functional(22).niftidir = niftidir2;
    EXPT.subject(7).functional(22).para{4} = fullfile(paradir2,'subj07b_21_GCGT_zero.para');
	
    EXPT.subject(7).functional(23).run = 23;
    EXPT.subject(7).functional(23).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(7).functional(23).dicomdir = dicomdir2;
    EXPT.subject(7).functional(23).niftidir = niftidir2;
    EXPT.subject(7).functional(23).para{4} = fullfile(paradir2,'subj07b_23_GCGT_zero.para');
		
    EXPT.subject(7).functional(24).run = 25;
    EXPT.subject(7).functional(24).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(7).functional(24).dicomdir = dicomdir2;
    EXPT.subject(7).functional(24).niftidir = niftidir2;
    EXPT.subject(7).functional(24).para{4} = fullfile(paradir2,'subj07b_25_GCGT_zero.para');
	  
    EXPT.subject(7).functional(25).run = 3;
    EXPT.subject(7).functional(25).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(7).functional(25).dicomdir = dicomdir3;
    EXPT.subject(7).functional(25).niftidir = niftidir3;
    EXPT.subject(7).functional(25).para{4} = fullfile(paradir3,'subj07c_03_GCGT_zero.para');
	
    EXPT.subject(7).functional(26).run = 5;
    EXPT.subject(7).functional(26).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(7).functional(26).dicomdir = dicomdir3;
    EXPT.subject(7).functional(26).niftidir = niftidir3;
    EXPT.subject(7).functional(26).para{4} = fullfile(paradir3,'subj07c_05_GCGT_zero.para');
	
    EXPT.subject(7).functional(27).run = 7;
    EXPT.subject(7).functional(27).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(7).functional(27).dicomdir = dicomdir3;
    EXPT.subject(7).functional(27).niftidir = niftidir3;
    EXPT.subject(7).functional(27).para{4} = fullfile(paradir3,'subj07c_07_GCGT_zero.para');
		
    EXPT.subject(7).functional(28).run = 9;
    EXPT.subject(7).functional(28).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(7).functional(28).dicomdir = dicomdir3;
    EXPT.subject(7).functional(28).niftidir = niftidir3;
    EXPT.subject(7).functional(28).para{4} = fullfile(paradir3,'subj07c_09_GCGT_zero.para');
	
    EXPT.subject(7).functional(29).run = 11;
    EXPT.subject(7).functional(29).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(7).functional(29).dicomdir = dicomdir3;
    EXPT.subject(7).functional(29).niftidir = niftidir3;
    EXPT.subject(7).functional(29).para{4} = fullfile(paradir3,'subj07c_11_GCGT_zero.para');
	
    EXPT.subject(7).functional(30).run = 13;
    EXPT.subject(7).functional(30).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(7).functional(30).dicomdir = dicomdir3;
    EXPT.subject(7).functional(30).niftidir = niftidir3;
    EXPT.subject(7).functional(30).para{4} = fullfile(paradir3,'subj07c_13_GCGT_zero.para');
	
    EXPT.subject(7).functional(31).run = 15;
    EXPT.subject(7).functional(31).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(7).functional(31).dicomdir = dicomdir3;
    EXPT.subject(7).functional(31).niftidir = niftidir3;
    EXPT.subject(7).functional(31).para{4} = fullfile(paradir3,'subj07c_15_GCGT_zero.para');
	
    EXPT.subject(7).functional(32).run = 17;
    EXPT.subject(7).functional(32).name = 'stim_sentencesAllSubset_8';
    EXPT.subject(7).functional(32).dicomdir = dicomdir3;
    EXPT.subject(7).functional(32).niftidir = niftidir3;
    EXPT.subject(7).functional(32).para{4} = fullfile(paradir3,'subj07c_17_GCGT_zero.para');
	
    EXPT.subject(7).functional(33).run = 19;
    EXPT.subject(7).functional(33).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(7).functional(33).dicomdir = dicomdir3;
    EXPT.subject(7).functional(33).niftidir = niftidir3;
    EXPT.subject(7).functional(33).para{4} = fullfile(paradir3,'subj07c_19_GCGT_zero.para');
	
    EXPT.subject(7).functional(34).run = 21;
    EXPT.subject(7).functional(34).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(7).functional(34).dicomdir = dicomdir3;
    EXPT.subject(7).functional(34).niftidir = niftidir3;
    EXPT.subject(7).functional(34).para{4} = fullfile(paradir3,'subj07c_21_GCGT_zero.para');
	
    %----------------------------------%
    %           SUBJECT 8              
    %----------------------------------%
    EXPT.subject(8).name = 'subj08';
    
    dicomdir1 = fullfile(EXPT.data_dir,'subj08','dicoms');
    niftidir1 = fullfile(EXPT.data_dir,'subj08','nii');
    paradir1 = fullfile(EXPT.data_dir,'subj08','onsets');
    dicomdir2 = fullfile(EXPT.data_dir,'subj08b','dicoms');
    niftidir2 = fullfile(EXPT.data_dir,'subj08b','nii');
    paradir2 = fullfile(EXPT.data_dir,'subj08b','onsets');
    dicomdir3 = fullfile(EXPT.data_dir,'subj08c','dicoms');
    niftidir3 = fullfile(EXPT.data_dir,'subj08c','nii');
    paradir3 = fullfile(EXPT.data_dir,'subj08c','onsets');
	
    EXPT.subject(8).anatomical.run = 5;
    EXPT.subject(8).anatomical.dicomdir = fullfile('/mindhive/nklab/projects/MACKEREL/data01','subj03','dicoms');
	EXPT.subject(8).anatomical.niftidir = fullfile(EXPT.data_dir,'subj08','anatomical');
	
    EXPT.subject(8).functional(1).run = 7;
    EXPT.subject(8).functional(1).name = 'stim_reversibles_1';
    EXPT.subject(8).functional(1).dicomdir = dicomdir1;
    EXPT.subject(8).functional(1).niftidir = niftidir1;
    EXPT.subject(8).functional(1).para{4} = fullfile(paradir1,'subj08_07_GCGT_zero.para');
    
    EXPT.subject(8).functional(2).run = 9;
    EXPT.subject(8).functional(2).name = 'stim_reversibles_2';
    EXPT.subject(8).functional(2).dicomdir = dicomdir1;
    EXPT.subject(8).functional(2).niftidir = niftidir1;
    EXPT.subject(8).functional(2).para{4} = fullfile(paradir1,'subj08_09_GCGT_zero.para');
    
    EXPT.subject(8).functional(3).run = 11;
    EXPT.subject(8).functional(3).name = 'stim_reversibles_3';
    EXPT.subject(8).functional(3).dicomdir = dicomdir1;
    EXPT.subject(8).functional(3).niftidir = niftidir1;
    EXPT.subject(8).functional(3).para{4} = fullfile(paradir1,'subj08_11_GCGT_zero.para');
    
    EXPT.subject(8).functional(4).run = 13;
    EXPT.subject(8).functional(4).name = 'stim_reversibles_4';
    EXPT.subject(8).functional(4).dicomdir = dicomdir1;
    EXPT.subject(8).functional(4).niftidir = niftidir1;
    EXPT.subject(8).functional(4).para{4} = fullfile(paradir1,'subj08_13_GCGT_zero.para');
    
    EXPT.subject(8).functional(5).run = 15;
    EXPT.subject(8).functional(5).name = 'stim_reversibles_5';
    EXPT.subject(8).functional(5).dicomdir = dicomdir1;
    EXPT.subject(8).functional(5).niftidir = niftidir1;
    EXPT.subject(8).functional(5).para{4} = fullfile(paradir1,'subj08_15_GCGT_zero.para');
    
    EXPT.subject(8).functional(6).run = 17;
    EXPT.subject(8).functional(6).name = 'stim_reversibles_6';
    EXPT.subject(8).functional(6).dicomdir = dicomdir1;
    EXPT.subject(8).functional(6).niftidir = niftidir1;
    EXPT.subject(8).functional(6).para{4} = fullfile(paradir1,'subj08_17_GCGT_zero.para');
    
    EXPT.subject(8).functional(7).run = 19;
    EXPT.subject(8).functional(7).name = 'LangLoc';
    EXPT.subject(8).functional(7).dicomdir = dicomdir1;
    EXPT.subject(8).functional(7).niftidir = niftidir1;
    EXPT.subject(8).functional(7).para{4} = fullfile(paradir1,'subj08_19_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(8).functional(8).run = 21;
    EXPT.subject(8).functional(8).name = 'LangLoc';
    EXPT.subject(8).functional(8).dicomdir = dicomdir1;
    EXPT.subject(8).functional(8).niftidir = niftidir1;
    EXPT.subject(8).functional(8).para{4} = fullfile(paradir1,'subj08_21_superloc2conds_Parvizi_c2.para');
	
    EXPT.subject(8).functional(9).run = 23;
    EXPT.subject(8).functional(9).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(8).functional(9).dicomdir = dicomdir1;
    EXPT.subject(8).functional(9).niftidir = niftidir1;
    EXPT.subject(8).functional(9).para{4} = fullfile(paradir1,'subj08_23_GCGT_zero.para');
	
    EXPT.subject(8).functional(10).run = 25;
    EXPT.subject(8).functional(10).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(8).functional(10).dicomdir = dicomdir1;
    EXPT.subject(8).functional(10).niftidir = niftidir1;
    EXPT.subject(8).functional(10).para{4} = fullfile(paradir1,'subj08_25_GCGT_zero.para');
	
    EXPT.subject(8).functional(11).run = 27;
    EXPT.subject(8).functional(11).name = 'stim_words1';
    EXPT.subject(8).functional(11).dicomdir = dicomdir1;
    EXPT.subject(8).functional(11).niftidir = niftidir1;
    EXPT.subject(8).functional(11).para{4} = fullfile(paradir1,'subj08_27_GCGT_zero.para');
	
    EXPT.subject(8).functional(12).run = 3;
    EXPT.subject(8).functional(12).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(8).functional(12).dicomdir = dicomdir2;
    EXPT.subject(8).functional(12).niftidir = niftidir2;
    EXPT.subject(8).functional(12).para{4} = fullfile(paradir2,'subj08b_03_GCGT_zero.para');
	
    EXPT.subject(8).functional(13).run = 5;
    EXPT.subject(8).functional(13).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(8).functional(13).dicomdir = dicomdir2;
    EXPT.subject(8).functional(13).niftidir = niftidir2;
    EXPT.subject(8).functional(13).para{4} = fullfile(paradir2,'subj08b_05_GCGT_zero.para');
	
    EXPT.subject(8).functional(14).run = 7;
    EXPT.subject(8).functional(14).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(8).functional(14).dicomdir = dicomdir2;
    EXPT.subject(8).functional(14).niftidir = niftidir2;
    EXPT.subject(8).functional(14).para{4} = fullfile(paradir2,'subj08b_07_GCGT_zero.para');
		
    EXPT.subject(8).functional(15).run = 9;
    EXPT.subject(8).functional(15).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(8).functional(15).dicomdir = dicomdir2;
    EXPT.subject(8).functional(15).niftidir = niftidir2;
    EXPT.subject(8).functional(15).para{4} = fullfile(paradir2,'subj08b_09_GCGT_zero.para');
	
    EXPT.subject(8).functional(16).run = 11;
    EXPT.subject(8).functional(16).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(8).functional(16).dicomdir = dicomdir2;
    EXPT.subject(8).functional(16).niftidir = niftidir2;
    EXPT.subject(8).functional(16).para{4} = fullfile(paradir2,'subj08b_11_GCGT_zero.para');
	
    EXPT.subject(8).functional(17).run = 13;
    EXPT.subject(8).functional(17).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(8).functional(17).dicomdir = dicomdir2;
    EXPT.subject(8).functional(17).niftidir = niftidir2;
    EXPT.subject(8).functional(17).para{4} = fullfile(paradir2,'subj08b_13_GCGT_zero.para');
	
    EXPT.subject(8).functional(18).run = 15;
    EXPT.subject(8).functional(18).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(8).functional(18).dicomdir = dicomdir2;
    EXPT.subject(8).functional(18).niftidir = niftidir2;
    EXPT.subject(8).functional(18).para{4} = fullfile(paradir2,'subj08b_15_GCGT_zero.para');
	
    EXPT.subject(8).functional(19).run = 17;
    EXPT.subject(8).functional(19).name = 'stim_sentencesAllSubset_8';
    EXPT.subject(8).functional(19).dicomdir = dicomdir2;
    EXPT.subject(8).functional(19).niftidir = niftidir2;
    EXPT.subject(8).functional(19).para{4} = fullfile(paradir2,'subj08b_17_GCGT_zero.para');
	
    EXPT.subject(8).functional(20).run = 19;
    EXPT.subject(8).functional(20).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(8).functional(20).dicomdir = dicomdir2;
    EXPT.subject(8).functional(20).niftidir = niftidir2;
    EXPT.subject(8).functional(20).para{4} = fullfile(paradir2,'subj08b_19_GCGT_zero.para');
	
    EXPT.subject(8).functional(21).run = 5;
    EXPT.subject(8).functional(21).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(8).functional(21).dicomdir = dicomdir3;
    EXPT.subject(8).functional(21).niftidir = niftidir3;
    EXPT.subject(8).functional(21).para{4} = fullfile(paradir3,'subj08c_05_GCGT_zero.para');
	
    EXPT.subject(8).functional(22).run = 7;
    EXPT.subject(8).functional(22).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(8).functional(22).dicomdir = dicomdir3;
    EXPT.subject(8).functional(22).niftidir = niftidir3;
    EXPT.subject(8).functional(22).para{4} = fullfile(paradir3,'subj08c_07_GCGT_zero.para');
	
    EXPT.subject(8).functional(23).run = 9;
    EXPT.subject(8).functional(23).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(8).functional(23).dicomdir = dicomdir3;
    EXPT.subject(8).functional(23).niftidir = niftidir3;
    EXPT.subject(8).functional(23).para{4} = fullfile(paradir3,'subj08c_09_GCGT_zero.para');
	
    EXPT.subject(8).functional(24).run = 11;
    EXPT.subject(8).functional(24).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(8).functional(24).dicomdir = dicomdir3;
    EXPT.subject(8).functional(24).niftidir = niftidir3;
    EXPT.subject(8).functional(24).para{4} = fullfile(paradir3,'subj08c_11_GCGT_zero.para');
		
    EXPT.subject(8).functional(25).run = 13
    EXPT.subject(8).functional(25).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(8).functional(25).dicomdir = dicomdir3;
    EXPT.subject(8).functional(25).niftidir = niftidir3;
    EXPT.subject(8).functional(25).para{4} = fullfile(paradir3,'subj08c_13_GCGT_zero.para');
	
    EXPT.subject(8).functional(26).run = 15;
    EXPT.subject(8).functional(26).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(8).functional(26).dicomdir = dicomdir3;
    EXPT.subject(8).functional(26).niftidir = niftidir3;
    EXPT.subject(8).functional(26).para{4} = fullfile(paradir3,'subj08c_15_GCGT_zero.para');
	
    EXPT.subject(8).functional(27).run = 17;
    EXPT.subject(8).functional(27).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(8).functional(27).dicomdir = dicomdir3;
    EXPT.subject(8).functional(27).niftidir = niftidir3;
    EXPT.subject(8).functional(27).para{4} = fullfile(paradir3,'subj08c_17_GCGT_zero.para');
	
    EXPT.subject(8).functional(28).run = 19;
    EXPT.subject(8).functional(28).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(8).functional(28).dicomdir = dicomdir3;
    EXPT.subject(8).functional(28).niftidir = niftidir3;
    EXPT.subject(8).functional(28).para{4} = fullfile(paradir3,'subj08c_19_GCGT_zero.para');
	
    EXPT.subject(8).functional(29).run = 21;
    EXPT.subject(8).functional(29).name = 'stim_sentencesAllSubset_8';
    EXPT.subject(8).functional(29).dicomdir = dicomdir3;
    EXPT.subject(8).functional(29).niftidir = niftidir3;
    EXPT.subject(8).functional(29).para{4} = fullfile(paradir3,'subj08c_21_GCGT_zero.para');
	
    EXPT.subject(8).functional(30).run = 23;
    EXPT.subject(8).functional(30).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(8).functional(30).dicomdir = dicomdir3;
    EXPT.subject(8).functional(30).niftidir = niftidir3;
    EXPT.subject(8).functional(30).para{4} = fullfile(paradir3,'subj08c_23_GCGT_zero.para');
	
    EXPT.subject(8).functional(31).run = 25;
    EXPT.subject(8).functional(31).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(8).functional(31).dicomdir = dicomdir3;
    EXPT.subject(8).functional(31).niftidir = niftidir3;
    EXPT.subject(8).functional(31).para{4} = fullfile(paradir3,'subj08c_25_GCGT_zero.para');
	
	