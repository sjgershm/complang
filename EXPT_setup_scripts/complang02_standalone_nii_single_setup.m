  function EXPT = complang_standalone_nii_single_setup
    
    % Collect information about the experiment into EXPT structure.
    %
    % USAGE: EXPT = complang02_setup
    
    % general info
    EXPT.TR = 2;        % repetition time
    EXPT.fwhm = 4;      % full-width half maximum for smoothing
    EXPT.analysis_dir = '/mindhive/nklab/projects/MACKEREL/test/analysis';
    EXPT.data_dir = '/mindhive/nklab/projects/MACKEREL/test/data';
    
    %addpath(genpath('/mindhive/nklab/projects/compositionality_lang/scripts/spm8'));
    addpath(genpath('/software/spm8_r5236/'));
    addpath('/mindhive/nklab/projects/MACKEREL/complang');
    addpath('/mindhive/nklab/projects/MACKEREL/fmri');
    addpath(genpath('/mindhive/nklab/projects/MACKEREL/complang/missing_matlab_funcs/'));

   %----------------------------------%
    %           SUBJECT 5              
    %----------------------------------%
    EXPT.subject(5).name = 'subj05';
    
    dicomdir1 = fullfile(EXPT.data_dir,'subj05','dicoms');
    niftidir1 = fullfile(EXPT.data_dir,'subj05','nii_single');
    paradir1 = fullfile(EXPT.data_dir,'subj05','onsets');
    dicomdir2 = fullfile(EXPT.data_dir,'subj05b','dicoms');
    niftidir2 = fullfile(EXPT.data_dir,'subj05b','nii_single');
    paradir2 = fullfile(EXPT.data_dir,'subj05b','onsets');
    dicomdir3 = fullfile(EXPT.data_dir,'subj05c','dicoms');
    niftidir3 = fullfile(EXPT.data_dir,'subj05c','nii_single');
    paradir3 = fullfile(EXPT.data_dir,'subj05c','onsets');
    dicomdir4 = fullfile(EXPT.data_dir,'subj05d','dicoms');
    niftidir4 = fullfile(EXPT.data_dir,'subj05d','nii_single');
    paradir4 = fullfile(EXPT.data_dir,'subj05d','onsets');
    dicomdir5 = fullfile(EXPT.data_dir,'subj05e','dicoms');
    niftidir5 = fullfile(EXPT.data_dir,'subj05e','nii_single');
    paradir5 = fullfile(EXPT.data_dir,'subj05e','onsets');
    dicomdir6 = fullfile(EXPT.data_dir,'subj05f','dicoms');
    niftidir6 = fullfile(EXPT.data_dir,'subj05f','nii_single');
    paradir6 = fullfile(EXPT.data_dir,'subj05f','onsets');
    
    EXPT.subject(5).anatomical.run = 3;
    EXPT.subject(5).anatomical.dicomdir = fullfile(EXPT.data_dir,'subj05','dicoms');
    EXPT.subject(5).anatomical.niftidir = fullfile(EXPT.data_dir,'subj05','nii_single');
    
    EXPT.subject(5).functional(1).run = 5;
    EXPT.subject(5).functional(1).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(5).functional(1).dicomdir = dicomdir1;
    EXPT.subject(5).functional(1).niftidir = niftidir1;
    EXPT.subject(5).functional(1).para{3} = fullfile(paradir1,'subj05_05_ICGT_zero.para');
    
    EXPT.subject(5).functional(2).run = 7;
    EXPT.subject(5).functional(2).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(5).functional(2).dicomdir = dicomdir1;
    EXPT.subject(5).functional(2).niftidir = niftidir1;
    EXPT.subject(5).functional(2).para{3} = fullfile(paradir1,'subj05_07_ICGT_zero.para');
    
    EXPT.subject(5).functional(3).run = 9;
    EXPT.subject(5).functional(3).name = 'stim_words1';
    EXPT.subject(5).functional(3).dicomdir = dicomdir1;
    EXPT.subject(5).functional(3).niftidir = niftidir1;
    EXPT.subject(5).functional(3).para{3} = fullfile(paradir1,'subj05_09_ICGT_zero.para');
    
    EXPT.subject(5).functional(4).run = 11;
    EXPT.subject(5).functional(4).name = 'stim_words2';
    EXPT.subject(5).functional(4).dicomdir = dicomdir1;
    EXPT.subject(5).functional(4).niftidir = niftidir1;
    EXPT.subject(5).functional(4).para{3} = fullfile(paradir1,'subj05_11_ICGT_zero.para');
    
    EXPT.subject(5).functional(5).run = 13;
    EXPT.subject(5).functional(5).name = 'stim_words3';
    EXPT.subject(5).functional(5).dicomdir = dicomdir1;
    EXPT.subject(5).functional(5).niftidir = niftidir1;
    EXPT.subject(5).functional(5).para{3} = fullfile(paradir1,'subj05_13_ICGT_zero.para');
    
    EXPT.subject(5).functional(6).run = 15;
    EXPT.subject(5).functional(6).name = 'LangLoc';
    EXPT.subject(5).functional(6).dicomdir = dicomdir1;
    EXPT.subject(5).functional(6).niftidir = niftidir1;
    EXPT.subject(5).functional(6).para{3} = fullfile(paradir1,'subj05_15_superloc2conds_Parvizi_c1.para');
    
    EXPT.subject(5).functional(7).run = 17;
    EXPT.subject(5).functional(7).name = 'LangLoc';
    EXPT.subject(5).functional(7).dicomdir = dicomdir1;
    EXPT.subject(5).functional(7).niftidir = niftidir1;
    EXPT.subject(5).functional(7).para{3} = fullfile(paradir1,'subj05_17_superloc2conds_Parvizi_c2.para');
    
    EXPT.subject(5).functional(8).run = 19;
    EXPT.subject(5).functional(8).name = 'stim_words4';
    EXPT.subject(5).functional(8).dicomdir = dicomdir1;
    EXPT.subject(5).functional(8).niftidir = niftidir1;
    EXPT.subject(5).functional(8).para{3} = fullfile(paradir1,'subj05_19_ICGT_zero.para');
	
    EXPT.subject(5).functional(9).run = 21;
    EXPT.subject(5).functional(9).name = 'stim_words5';
    EXPT.subject(5).functional(9).dicomdir = dicomdir1;
    EXPT.subject(5).functional(9).niftidir = niftidir1;
    EXPT.subject(5).functional(9).para{3} = fullfile(paradir1,'subj05_21_ICGT_zero.para');
	
    EXPT.subject(5).functional(10).run = 23;
    EXPT.subject(5).functional(10).name = 'stim_words6';
    EXPT.subject(5).functional(10).dicomdir = dicomdir1;
    EXPT.subject(5).functional(10).niftidir = niftidir1;
    EXPT.subject(5).functional(10).para{3} = fullfile(paradir1,'subj05_23_ICGT_zero.para');
	
    EXPT.subject(5).functional(11).run = 25;
    EXPT.subject(5).functional(11).name = 'stim_words7';
    EXPT.subject(5).functional(11).dicomdir = dicomdir1;
    EXPT.subject(5).functional(11).niftidir = niftidir1;
    EXPT.subject(5).functional(11).para{3} = fullfile(paradir1,'subj05_25_ICGT_zero.para');
	
    EXPT.subject(5).functional(12).run = 5;
    EXPT.subject(5).functional(12).name = 'stim_reversibles1';
    EXPT.subject(5).functional(12).dicomdir = dicomdir2;
    EXPT.subject(5).functional(12).niftidir = niftidir2;
    EXPT.subject(5).functional(12).para{3} = fullfile(paradir2,'subj05b_05_ICGT_zero.para');
    
    EXPT.subject(5).functional(13).run = 7;
    EXPT.subject(5).functional(13).name = 'stim_reversibles2';
    EXPT.subject(5).functional(13).dicomdir = dicomdir2;
    EXPT.subject(5).functional(13).niftidir = niftidir2;
    EXPT.subject(5).functional(13).para{3} = fullfile(paradir2,'subj05b_07_ICGT_zero.para');
    
    EXPT.subject(5).functional(14).run = 9;
    EXPT.subject(5).functional(14).name = 'stim_reversibles3';
    EXPT.subject(5).functional(14).dicomdir = dicomdir2;
    EXPT.subject(5).functional(14).niftidir = niftidir2;
    EXPT.subject(5).functional(14).para{3} = fullfile(paradir2,'subj05b_09_ICGT_zero.para');
    
    EXPT.subject(5).functional(15).run = 11;
    EXPT.subject(5).functional(15).name = 'stim_reversibles4';
    EXPT.subject(5).functional(15).dicomdir = dicomdir2;
    EXPT.subject(5).functional(15).niftidir = niftidir2;
    EXPT.subject(5).functional(15).para{3} = fullfile(paradir2,'subj05b_11_ICGT_zero.para');
    
    EXPT.subject(5).functional(16).run = 13;
    EXPT.subject(5).functional(16).name = 'stim_reversibles5';
    EXPT.subject(5).functional(16).dicomdir = dicomdir2;
    EXPT.subject(5).functional(16).niftidir = niftidir2;
    EXPT.subject(5).functional(16).para{3} = fullfile(paradir2,'subj05b_13_ICGT_zero.para');
    
    EXPT.subject(5).functional(17).run = 15;
    EXPT.subject(5).functional(17).name = 'stim_reversibles6';
    EXPT.subject(5).functional(17).dicomdir = dicomdir2;
    EXPT.subject(5).functional(17).niftidir = niftidir2;
    EXPT.subject(5).functional(17).para{3} = fullfile(paradir2,'subj05b_15_ICGT_zero.para');
    
    EXPT.subject(5).functional(18).run = 17;
    EXPT.subject(5).functional(18).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(5).functional(18).dicomdir = dicomdir2;
    EXPT.subject(5).functional(18).niftidir = niftidir2;
    EXPT.subject(5).functional(18).para{3} = fullfile(paradir2,'subj05b_17_ICGT_zero.para');
    
    EXPT.subject(5).functional(19).run = 19;
    EXPT.subject(5).functional(19).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(5).functional(19).dicomdir = dicomdir2;
    EXPT.subject(5).functional(19).niftidir = niftidir2;
    EXPT.subject(5).functional(19).para{3} = fullfile(paradir2,'subj05b_19_ICGT_zero.para');
	
    EXPT.subject(5).functional(20).run = 21;
    EXPT.subject(5).functional(20).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(5).functional(20).dicomdir = dicomdir2;
    EXPT.subject(5).functional(20).niftidir = niftidir2;
    EXPT.subject(5).functional(20).para{3} = fullfile(paradir2,'subj05b_21_ICGT_zero.para');
	
    EXPT.subject(5).functional(21).run = 23;
    EXPT.subject(5).functional(21).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(5).functional(21).dicomdir = dicomdir2;
    EXPT.subject(5).functional(21).niftidir = niftidir2;
    EXPT.subject(5).functional(21).para{3} = fullfile(paradir2,'subj05b_23_ICGT_zero.para');
	
    EXPT.subject(5).functional(22).run = 25;
    EXPT.subject(5).functional(22).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(5).functional(22).dicomdir = dicomdir2;
    EXPT.subject(5).functional(22).niftidir = niftidir2;
    EXPT.subject(5).functional(22).para{3} = fullfile(paradir2,'subj05b_25_ICGT_zero.para');
		
    EXPT.subject(5).functional(23).run = 27;
    EXPT.subject(5).functional(23).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(5).functional(23).dicomdir = dicomdir2;
    EXPT.subject(5).functional(23).niftidir = niftidir2;
    EXPT.subject(5).functional(23).para{3} = fullfile(paradir2,'subj05b_27_ICGT_zero.para');
	  
    EXPT.subject(5).functional(24).run = 29;
    EXPT.subject(5).functional(24).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(5).functional(24).dicomdir = dicomdir2;
    EXPT.subject(5).functional(24).niftidir = niftidir2;
    EXPT.subject(5).functional(24).para{3} = fullfile(paradir2,'subj05b_29_ICGT_zero.para');
		
    EXPT.subject(5).functional(25).run = 31;
    EXPT.subject(5).functional(25).name = 'stim_sentencesAllSubset_8';
    EXPT.subject(5).functional(25).dicomdir = dicomdir2;
    EXPT.subject(5).functional(25).niftidir = niftidir2;
    EXPT.subject(5).functional(25).para{3} = fullfile(paradir2,'subj05b_31_ICGT_zero.para');
	  
    EXPT.subject(5).functional(26).run = 5;
    EXPT.subject(5).functional(26).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(5).functional(26).dicomdir = dicomdir3;
    EXPT.subject(5).functional(26).niftidir = niftidir3;
    EXPT.subject(5).functional(26).para{3} = fullfile(paradir3,'subj05c_05_ICGT_zero.para');
	
    EXPT.subject(5).functional(27).run = 7;
    EXPT.subject(5).functional(27).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(5).functional(27).dicomdir = dicomdir3;
    EXPT.subject(5).functional(27).niftidir = niftidir3;
    EXPT.subject(5).functional(27).para{3} = fullfile(paradir3,'subj05c_07_ICGT_zero.para');
	
    EXPT.subject(5).functional(28).run = 9;
    EXPT.subject(5).functional(28).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(5).functional(28).dicomdir = dicomdir3;
    EXPT.subject(5).functional(28).niftidir = niftidir3;
    EXPT.subject(5).functional(28).para{3} = fullfile(paradir3,'subj05c_09_ICGT_zero.para');
		
    EXPT.subject(5).functional(29).run = 11;
    EXPT.subject(5).functional(29).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(5).functional(29).dicomdir = dicomdir3;
    EXPT.subject(5).functional(29).niftidir = niftidir3;
    EXPT.subject(5).functional(29).para{3} = fullfile(paradir3,'subj05c_11_ICGT_zero.para');
	
    EXPT.subject(5).functional(30).run = 13;
    EXPT.subject(5).functional(30).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(5).functional(30).dicomdir = dicomdir3;
    EXPT.subject(5).functional(30).niftidir = niftidir3;
    EXPT.subject(5).functional(30).para{3} = fullfile(paradir3,'subj05c_13_ICGT_zero.para');
	
    EXPT.subject(5).functional(31).run = 15;
    EXPT.subject(5).functional(31).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(5).functional(31).dicomdir = dicomdir3;
    EXPT.subject(5).functional(31).niftidir = niftidir3;
    EXPT.subject(5).functional(31).para{3} = fullfile(paradir3,'subj05c_15_ICGT_zero.para');
	
    EXPT.subject(5).functional(32).run = 17;
    EXPT.subject(5).functional(32).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(5).functional(32).dicomdir = dicomdir3;
    EXPT.subject(5).functional(32).niftidir = niftidir3;
    EXPT.subject(5).functional(32).para{3} = fullfile(paradir3,'subj05c_17_ICGT_zero.para');
	
    EXPT.subject(5).functional(33).run = 19;
    EXPT.subject(5).functional(33).name = 'stim_sentencesAllSubset_8';
    EXPT.subject(5).functional(33).dicomdir = dicomdir3;
    EXPT.subject(5).functional(33).niftidir = niftidir3;
    EXPT.subject(5).functional(33).para{3} = fullfile(paradir3,'subj05c_19_ICGT_zero.para');
	
    EXPT.subject(5).functional(34).run = 21;
    EXPT.subject(5).functional(34).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(5).functional(34).dicomdir = dicomdir3;
    EXPT.subject(5).functional(34).niftidir = niftidir3;
    EXPT.subject(5).functional(34).para{3} = fullfile(paradir3,'subj05c_21_ICGT_zero.para');
	
    EXPT.subject(5).functional(35).run = 23;
    EXPT.subject(5).functional(35).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(5).functional(35).dicomdir = dicomdir3;
    EXPT.subject(5).functional(35).niftidir = niftidir3;
    EXPT.subject(5).functional(35).para{3} = fullfile(paradir3,'subj05c_23_ICGT_zero.para');
	
    EXPT.subject(5).functional(36).run = 25;
    EXPT.subject(5).functional(36).name = 'stim_TargetWords1';
    EXPT.subject(5).functional(36).dicomdir = dicomdir3;
    EXPT.subject(5).functional(36).niftidir = niftidir3;
    EXPT.subject(5).functional(36).para{3} = fullfile(paradir3,'subj05c_25_ICGT_zero.para');
	
    EXPT.subject(5).functional(37).run = 27;
    EXPT.subject(5).functional(37).name = 'stim_TargetWords2';
    EXPT.subject(5).functional(37).dicomdir = dicomdir3;
    EXPT.subject(5).functional(37).niftidir = niftidir3;
    EXPT.subject(5).functional(37).para{3} = fullfile(paradir3,'subj05c_27_ICGT_zero.para');
	
	EXPT.subject(5).functional(38).run = 3;
    EXPT.subject(5).functional(38).name = 'stim_sentencesAllSubset_1';
    EXPT.subject(5).functional(38).dicomdir = dicomdir4;
    EXPT.subject(5).functional(38).niftidir = niftidir4;
    EXPT.subject(5).functional(38).para{3} = fullfile(paradir4,'subj05d_03_ICGT_zero.para');
	
    EXPT.subject(5).functional(39).run = 5;
    EXPT.subject(5).functional(39).name = 'stim_sentencesAllSubset_2';
    EXPT.subject(5).functional(39).dicomdir = dicomdir4;
    EXPT.subject(5).functional(39).niftidir = niftidir4;
    EXPT.subject(5).functional(39).para{3} = fullfile(paradir4,'subj05d_05_ICGT_zero.para');
	
    EXPT.subject(5).functional(40).run = 7;
    EXPT.subject(5).functional(40).name = 'stim_sentencesAllSubset_3';
    EXPT.subject(5).functional(40).dicomdir = dicomdir4;
    EXPT.subject(5).functional(40).niftidir = niftidir4;
    EXPT.subject(5).functional(40).para{3} = fullfile(paradir4,'subj05d_07_ICGT_zero.para');
	
    EXPT.subject(5).functional(41).run = 9;
    EXPT.subject(5).functional(41).name = 'stim_sentencesAllSubset_4';
    EXPT.subject(5).functional(41).dicomdir = dicomdir4;
    EXPT.subject(5).functional(41).niftidir = niftidir4;
    EXPT.subject(5).functional(41).para{3} = fullfile(paradir4,'subj05d_09_ICGT_zero.para');
		
    EXPT.subject(5).functional(42).run = 11;
    EXPT.subject(5).functional(42).name = 'stim_sentencesAllSubset_5';
    EXPT.subject(5).functional(42).dicomdir = dicomdir4;
    EXPT.subject(5).functional(42).niftidir = niftidir4;
    EXPT.subject(5).functional(42).para{3} = fullfile(paradir4,'subj05d_11_ICGT_zero.para');
	
    EXPT.subject(5).functional(43).run = 13;
    EXPT.subject(5).functional(43).name = 'stim_sentencesAllSubset_6';
    EXPT.subject(5).functional(43).dicomdir = dicomdir4;
    EXPT.subject(5).functional(43).niftidir = niftidir4;
    EXPT.subject(5).functional(43).para{3} = fullfile(paradir4,'subj05d_13_ICGT_zero.para');
	
    EXPT.subject(5).functional(44).run = 15;
    EXPT.subject(5).functional(44).name = 'stim_sentencesAllSubset_7';
    EXPT.subject(5).functional(44).dicomdir = dicomdir4;
    EXPT.subject(5).functional(44).niftidir = niftidir4;
    EXPT.subject(5).functional(44).para{3} = fullfile(paradir4,'subj05d_15_ICGT_zero.para');
	
    EXPT.subject(5).functional(45).run = 17;
    EXPT.subject(5).functional(45).name = 'stim_sentencesAllSubset_8';
    EXPT.subject(5).functional(45).dicomdir = dicomdir4;
    EXPT.subject(5).functional(45).niftidir = niftidir4;
    EXPT.subject(5).functional(45).para{3} = fullfile(paradir4,'subj05d_17_ICGT_zero.para');
	
    EXPT.subject(5).functional(46).run = 19;
    EXPT.subject(5).functional(46).name = 'stim_sentencesSubsetA_1';
    EXPT.subject(5).functional(46).dicomdir = dicomdir4;
    EXPT.subject(5).functional(46).niftidir = niftidir4;
    EXPT.subject(5).functional(46).para{3} = fullfile(paradir4,'subj05d_19_ICGT_zero.para');
	
    EXPT.subject(5).functional(47).run = 21;
    EXPT.subject(5).functional(47).name = 'stim_sentencesSubsetB_1';
    EXPT.subject(5).functional(47).dicomdir = dicomdir4;
    EXPT.subject(5).functional(47).niftidir = niftidir4;
    EXPT.subject(5).functional(47).para{3} = fullfile(paradir4,'subj05d_21_ICGT_zero.para');
	
    EXPT.subject(5).functional(48).run = 23;
    EXPT.subject(5).functional(48).name = 'stim_TargetWords3';
    EXPT.subject(5).functional(48).dicomdir = dicomdir4;
    EXPT.subject(5).functional(48).niftidir = niftidir4;
    EXPT.subject(5).functional(48).para{3} = fullfile(paradir4,'subj05d_23_ICGT_zero.para');
	
    EXPT.subject(5).functional(49).run = 25;
    EXPT.subject(5).functional(49).name = 'stim_TargetWords4';
    EXPT.subject(5).functional(49).dicomdir = dicomdir4;
    EXPT.subject(5).functional(49).niftidir = niftidir4;
    EXPT.subject(5).functional(49).para{3} = fullfile(paradir4,'subj05d_25_ICGT_zero.para');
	
	EXPT.subject(5).functional(50).run = 3;
    EXPT.subject(5).functional(50).name = 'stim_TargetWords7';
    EXPT.subject(5).functional(50).dicomdir = dicomdir5;
    EXPT.subject(5).functional(50).niftidir = niftidir5;
    EXPT.subject(5).functional(50).para{3} = fullfile(paradir5,'subj05e_03_ICGT_zero.para');
	
    EXPT.subject(5).functional(51).run = 5;
    EXPT.subject(5).functional(51).name = 'stim_TargetWords8';
    EXPT.subject(5).functional(51).dicomdir = dicomdir5;
    EXPT.subject(5).functional(51).niftidir = niftidir5;
    EXPT.subject(5).functional(51).para{3} = fullfile(paradir5,'subj05e_05_ICGT_zero.para');
	
    EXPT.subject(5).functional(52).run = 7;
    EXPT.subject(5).functional(52).name = 'stim_TargetWords9';
    EXPT.subject(5).functional(52).dicomdir = dicomdir5;
    EXPT.subject(5).functional(52).niftidir = niftidir5;
    EXPT.subject(5).functional(52).para{3} = fullfile(paradir5,'subj05e_07_ICGT_zero.para');
	
    EXPT.subject(5).functional(53).run = 9;
    EXPT.subject(5).functional(53).name = 'stim_TargetWords10';
    EXPT.subject(5).functional(53).dicomdir = dicomdir5;
    EXPT.subject(5).functional(53).niftidir = niftidir5;
    EXPT.subject(5).functional(53).para{3} = fullfile(paradir5,'subj05e_09_ICGT_zero.para');
		
    EXPT.subject(5).functional(54).run = 11;
    EXPT.subject(5).functional(54).name = 'stim_TargetWords11';
    EXPT.subject(5).functional(54).dicomdir = dicomdir5;
    EXPT.subject(5).functional(54).niftidir = niftidir5;
    EXPT.subject(5).functional(54).para{3} = fullfile(paradir5,'subj05e_11_ICGT_zero.para');
	
    EXPT.subject(5).functional(55).run = 13;
    EXPT.subject(5).functional(55).name = 'stim_TargetWords12';
    EXPT.subject(5).functional(55).dicomdir = dicomdir5;
    EXPT.subject(5).functional(55).niftidir = niftidir5;
    EXPT.subject(5).functional(55).para{3} = fullfile(paradir5,'subj05e_13_ICGT_zero.para');
	
    EXPT.subject(5).functional(56).run = 15;
    EXPT.subject(5).functional(56).name = 'stim_TargetWords13';
    EXPT.subject(5).functional(56).dicomdir = dicomdir5;
    EXPT.subject(5).functional(56).niftidir = niftidir5;
    EXPT.subject(5).functional(56).para{3} = fullfile(paradir5,'subj05e_15_ICGT_zero.para');
	
    EXPT.subject(5).functional(57).run = 17;
    EXPT.subject(5).functional(57).name = 'stim_TargetWords14';
    EXPT.subject(5).functional(57).dicomdir = dicomdir5;
    EXPT.subject(5).functional(57).niftidir = niftidir5;
    EXPT.subject(5).functional(57).para{3} = fullfile(paradir5,'subj05e_17_ICGT_zero.para');
	
    EXPT.subject(5).functional(58).run = 19;
    EXPT.subject(5).functional(58).name = 'stim_TargetWords15';
    EXPT.subject(5).functional(58).dicomdir = dicomdir5;
    EXPT.subject(5).functional(58).niftidir = niftidir5;
    EXPT.subject(5).functional(58).para{3} = fullfile(paradir5,'subj05e_19_ICGT_zero.para');
	
    EXPT.subject(5).functional(59).run = 21;
    EXPT.subject(5).functional(59).name = 'stim_TargetWords16';
    EXPT.subject(5).functional(59).dicomdir = dicomdir5;
    EXPT.subject(5).functional(59).niftidir = niftidir5;
    EXPT.subject(5).functional(59).para{3} = fullfile(paradir5,'subj05e_21_ICGT_zero.para');
	
    EXPT.subject(5).functional(60).run = 23;
    EXPT.subject(5).functional(60).name = 'stim_TargetWords17';
    EXPT.subject(5).functional(60).dicomdir = dicomdir5;
    EXPT.subject(5).functional(60).niftidir = niftidir5;
    EXPT.subject(5).functional(60).para{3} = fullfile(paradir5,'subj05e_23_ICGT_zero.para');
	
    EXPT.subject(5).functional(61).run = 25;
    EXPT.subject(5).functional(61).name = 'stim_TargetWords18';
    EXPT.subject(5).functional(61).dicomdir = dicomdir5;
    EXPT.subject(5).functional(61).niftidir = niftidir5;
    EXPT.subject(5).functional(61).para{3} = fullfile(paradir5,'subj05e_25_ICGT_zero.para');
	
    EXPT.subject(5).functional(62).run = 3;
    EXPT.subject(5).functional(62).name = 'stim_wordsTwo1';
    EXPT.subject(5).functional(62).dicomdir = dicomdir6;
    EXPT.subject(5).functional(62).niftidir = niftidir6;
    EXPT.subject(5).functional(62).para{3} = fullfile(paradir6,'subj05f_03_ICGT_zero.para');
	
    EXPT.subject(5).functional(63).run = 5;
    EXPT.subject(5).functional(63).name = 'stim_wordsTwo2';
    EXPT.subject(5).functional(63).dicomdir = dicomdir6;
    EXPT.subject(5).functional(63).niftidir = niftidir6;
    EXPT.subject(5).functional(63).para{3} = fullfile(paradir6,'subj05f_05_ICGT_zero.para');
	
    EXPT.subject(5).functional(64).run = 7;
    EXPT.subject(5).functional(64).name = 'stim_wordsTwo3';
    EXPT.subject(5).functional(64).dicomdir = dicomdir6;
    EXPT.subject(5).functional(64).niftidir = niftidir6;
    EXPT.subject(5).functional(64).para{3} = fullfile(paradir6,'subj05f_07_ICGT_zero.para');
	
    EXPT.subject(5).functional(65).run = 9;
    EXPT.subject(5).functional(65).name = 'stim_words8';
    EXPT.subject(5).functional(65).dicomdir = dicomdir6;
    EXPT.subject(5).functional(65).niftidir = niftidir6;
    EXPT.subject(5).functional(65).para{3} = fullfile(paradir6,'subj05f_09_ICGT_zero.para');
	
    EXPT.subject(5).functional(66).run = 11;
    EXPT.subject(5).functional(66).name = 'stim_wordsTwo4';
    EXPT.subject(5).functional(66).dicomdir = dicomdir6;
    EXPT.subject(5).functional(66).niftidir = niftidir6;
    EXPT.subject(5).functional(66).para{3} = fullfile(paradir6,'subj05f_11_ICGT_zero.para');
	
    EXPT.subject(5).functional(67).run = 13;
    EXPT.subject(5).functional(67).name = 'stim_wordsTwo5';
    EXPT.subject(5).functional(67).dicomdir = dicomdir6;
    EXPT.subject(5).functional(67).niftidir = niftidir6;
    EXPT.subject(5).functional(67).para{3} = fullfile(paradir6,'subj05f_13_ICGT_zero.para');
	
    EXPT.subject(5).functional(68).run = 15;
    EXPT.subject(5).functional(68).name = 'stim_reversibles1';
    EXPT.subject(5).functional(68).dicomdir = dicomdir6;
    EXPT.subject(5).functional(68).niftidir = niftidir6;
    EXPT.subject(5).functional(68).para{3} = fullfile(paradir6,'subj05f_15_ICGT_zero.para');
	
    EXPT.subject(5).functional(69).run = 17;
    EXPT.subject(5).functional(69).name = 'stim_wordsTwo6';
    EXPT.subject(5).functional(69).dicomdir = dicomdir6;
    EXPT.subject(5).functional(69).niftidir = niftidir6;
    EXPT.subject(5).functional(69).para{3} = fullfile(paradir6,'subj05f_17_ICGT_zero.para');
	
    EXPT.subject(5).functional(70).run = 19;
    EXPT.subject(5).functional(70).name = 'stim_reversibles2';
    EXPT.subject(5).functional(70).dicomdir = dicomdir6;
    EXPT.subject(5).functional(70).niftidir = niftidir6;
    EXPT.subject(5).functional(70).para{3} = fullfile(paradir6,'subj05f_19_ICGT_zero.para');
	
    EXPT.subject(5).functional(71).run = 21;
    EXPT.subject(5).functional(71).name = 'stim_reversibles3';
    EXPT.subject(5).functional(71).dicomdir = dicomdir6;
    EXPT.subject(5).functional(71).niftidir = niftidir6;
    EXPT.subject(5).functional(71).para{3} = fullfile(paradir6,'subj05f_21_ICGT_zero.para');
	
    EXPT.subject(5).functional(72).run = 23;
    EXPT.subject(5).functional(72).name = 'stim_reversibles4';
    EXPT.subject(5).functional(72).dicomdir = dicomdir6;
    EXPT.subject(5).functional(72).niftidir = niftidir6;
    EXPT.subject(5).functional(72).para{3} = fullfile(paradir6,'subj05f_23_ICGT_zero.para');
	
    EXPT.subject(5).functional(73).run = 25;
    EXPT.subject(5).functional(73).name = 'stim_reversibles5';
    EXPT.subject(5).functional(73).dicomdir = dicomdir6;
    EXPT.subject(5).functional(73).niftidir = niftidir6;
    EXPT.subject(5).functional(73).para{3} = fullfile(paradir6,'subj05f_25_ICGT_zero.para');
	
    EXPT.subject(5).functional(74).run = 27;
    EXPT.subject(5).functional(74).name = 'stim_reversibles6';
    EXPT.subject(5).functional(74).dicomdir = dicomdir6;
    EXPT.subject(5).functional(74).niftidir = niftidir6;
    EXPT.subject(5).functional(74).para{3} = fullfile(paradir6,'subj05f_27_ICGT_zero.para');
	