function EXPT = complang02_setup_princeton()
  
% Collect information about the experiment into EXPT structure.
%
% USAGE: EXPT = complang02_setup
  
% general info
  EXPT.TR = 2;        % repetition time
  EXPT.fwhm = 4;      % full-width half maximum for smoothing
  EXPT.analysis_dir = '/Volumes/Store/Datasets/MITPU/analysis02';
  EXPT.data_dir     = '/Volumes/Store/Datasets/MITPU/data02';
    
  %addpath(genpath('/mindhive/nklab/projects/compositionality_lang/scripts/spm8'));
  addpath(genpath('/usr/local/src/spm8/'));
  addpath('/usr/local/src/MIT/complang');
  addpath('/usr/local/src/MIT/fmri');
  
  %----------------------------------%
  %           SUBJECT 1              
  %----------------------------------%
  EXPT.subject(1).name = 'sub01';
  
  % sentences
  dicomdir1 = fullfile(EXPT.data_dir,'SUB01_20140904','dicoms');
  niftidir1 = fullfile(EXPT.data_dir,'SUB01_20140904','nii');
  paradir1  = fullfile(EXPT.data_dir,'SUB01_20140904','onsets');
  % simwords + language localizer
  dicomdir2 = fullfile(EXPT.data_dir,'SUB01_20140910','dicoms');
  niftidir2 = fullfile(EXPT.data_dir,'SUB01_20140910','nii');
  paradir2  = fullfile(EXPT.data_dir,'SUB01_20140910','onsets');
  % sentences
  dicomdir3 = fullfile(EXPT.data_dir,'SUB01_20140911','dicoms');
  niftidir3 = fullfile(EXPT.data_dir,'SUB01_20140911','nii');
  paradir3  = fullfile(EXPT.data_dir,'SUB01_20140911','onsets');

  EXPT.subject(1).anatomical.run = 2;
  EXPT.subject(1).anatomical.dicomdir = dicomdir2;
  EXPT.subject(1).anatomical.niftidir = niftidir2;
  
  % alternative, if we can have one structural per run
  %  aidx = 1;
  %EXPT.subject(1).anatomical(aidx).run = 2;
  %  EXPT.subject(1).anatomical(aidx).dicomdir = dicomdir1;
  %  EXPT.subject(1).anatomical(aidx).niftidir = niftidir1;
  %  aidx = aidx + 1;
  %  EXPT.subject(1).anatomical(aidx).run = 2;
  %  EXPT.subject(1).anatomical(aidx).dicomdir = dicomdir2;
  %  EXPT.subject(1).anatomical(aidx).niftidir = niftidir2;
  %  aidx = aidx + 1;
  %  EXPT.subject(1).anatomical(aidx).run = 2;
  %  EXPT.subject(1).anatomical(aidx).dicomdir = dicomdir3;
  % EXPT.subject(1).anatomical(aidx).niftidir = niftidir3;
  
  fidx = 1;

  %% session 1
  
  EXPT.subject(1).functional(fidx).run = 4;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_1';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir1;
  EXPT.subject(1).functional(fidx).niftidir = niftidir1;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir1,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 6;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_2';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir1;
  EXPT.subject(1).functional(fidx).niftidir = niftidir1;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir1,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 8;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_3';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir1;
  EXPT.subject(1).functional(fidx).niftidir = niftidir1;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir1,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 10;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_4';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir1;
  EXPT.subject(1).functional(fidx).niftidir = niftidir1;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir1,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 12;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_5';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir1;
  EXPT.subject(1).functional(fidx).niftidir = niftidir1;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir1,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 14;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_6';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir1;
  EXPT.subject(1).functional(fidx).niftidir = niftidir1;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir1,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 16;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_7';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir1;
  EXPT.subject(1).functional(fidx).niftidir = niftidir1;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir1,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 18;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_8';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir1;
  EXPT.subject(1).functional(fidx).niftidir = niftidir1;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir1,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 20;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesSubsetA_1';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir1;
  EXPT.subject(1).functional(fidx).niftidir = niftidir1;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir1,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 22;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesSubsetB_1';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir1;
  EXPT.subject(1).functional(fidx).niftidir = niftidir1;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir1,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  
  
  %% session 2

  EXPT.subject(1).functional(fidx).run = 4;
  EXPT.subject(1).functional(fidx).name = 'stim_words1';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir2;
  EXPT.subject(1).functional(fidx).niftidir = niftidir2;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir2,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 6;
  EXPT.subject(1).functional(fidx).name = 'stim_words2';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir2;
  EXPT.subject(1).functional(fidx).niftidir = niftidir2;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir2,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 8;
  EXPT.subject(1).functional(fidx).name = 'stim_words3';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir2;
  EXPT.subject(1).functional(fidx).niftidir = niftidir2;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir2,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 10;
  EXPT.subject(1).functional(fidx).name = 'stim_words4';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir2;
  EXPT.subject(1).functional(fidx).niftidir = niftidir2;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir2,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 12;
  EXPT.subject(1).functional(fidx).name = 'stim_words5';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir2;
  EXPT.subject(1).functional(fidx).niftidir = niftidir2;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir2,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 14;
  EXPT.subject(1).functional(fidx).name = 'stim_words6';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir2;
  EXPT.subject(1).functional(fidx).niftidir = niftidir2;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir2,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 16;
  EXPT.subject(1).functional(fidx).name = 'stim_words7';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir2;
  EXPT.subject(1).functional(fidx).niftidir = niftidir2;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir2,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 18;
  EXPT.subject(1).functional(fidx).name = 'stim_words8';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir2;
  EXPT.subject(1).functional(fidx).niftidir = niftidir2;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir2,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 20;
  EXPT.subject(1).functional(fidx).name = 'LangLoc_1';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir2;
  EXPT.subject(1).functional(fidx).niftidir = niftidir2;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir2,sprintf('data_%s.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 22;
  EXPT.subject(1).functional(fidx).name = 'LangLoc_2';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir2;
  EXPT.subject(1).functional(fidx).niftidir = niftidir2;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir2,sprintf('data_%s.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  
  %% session 3
  
  EXPT.subject(1).functional(fidx).run = 4;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_1';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir3;
  EXPT.subject(1).functional(fidx).niftidir = niftidir3;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir3,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 6;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_2';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir3;
  EXPT.subject(1).functional(fidx).niftidir = niftidir3;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir3,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 8;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_3';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir3;
  EXPT.subject(1).functional(fidx).niftidir = niftidir3;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir3,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 10;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_4';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir3;
  EXPT.subject(1).functional(fidx).niftidir = niftidir3;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir3,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 12;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_5';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir3;
  EXPT.subject(1).functional(fidx).niftidir = niftidir3;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir3,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 14;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_6';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir3;
  EXPT.subject(1).functional(fidx).niftidir = niftidir3;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir3,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 16;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_7';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir3;
  EXPT.subject(1).functional(fidx).niftidir = niftidir3;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir3,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 18;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesAllSubset_8';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir3;
  EXPT.subject(1).functional(fidx).niftidir = niftidir3;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir3,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 20;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesSubsetA_1';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir3;
  EXPT.subject(1).functional(fidx).niftidir = niftidir3;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir3,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(1).functional(fidx).run = 22;
  EXPT.subject(1).functional(fidx).name = 'stim_sentencesSubsetB_1';
  EXPT.subject(1).functional(fidx).dicomdir = dicomdir3;
  EXPT.subject(1).functional(fidx).niftidir = niftidir3;
  EXPT.subject(1).functional(fidx).para{1} = fullfile(paradir3,sprintf('data_%s_ICGT_zero.para',EXPT.subject(1).functional(fidx).name));
  fidx = fidx + 1;
  
  %----------------------------------%
  %           SUBJECT 2              
  %----------------------------------%
  EXPT.subject(2).name = 'sub02';
  
  dicomdir1 = fullfile(EXPT.data_dir,'SUB02_20140908','dicoms');
  niftidir1 = fullfile(EXPT.data_dir,'SUB02_20140908','nii');
  paradir1  = fullfile(EXPT.data_dir,'SUB02_20140908','onsets');
  
  