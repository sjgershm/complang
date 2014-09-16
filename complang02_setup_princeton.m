function EXP = complang02_setup_princeton()
  
% Collect information about the experiment into EXPT structure.
%
% USAGE: EXPT = complang02_setup
  
% general info
  EXPT.TR = 2;        % repetition time
  EXPT.fwhm = 4;      % full-width half maximum for smoothing
  EXPT.analysis_dir = '/Volumes/Store/Datasets/MITPU/analysis02';
  EXPT.data_dir     = '/Volumes/Store/Datasets/MITPU/data02';
    
  %addpath(genpath('/mindhive/nklab/projects/compositionality_lang/scripts/spm8'));
  addpath(genpath('/usr/local/src//spm8/'));
  addpath('/usr/local/src/MIT/complang');
  addpath('/usr/local/src/MIT/fmri');
  
  %----------------------------------%
  %           SUBJECT 1              
  %----------------------------------%
  EXPT.subject(1).name = 'sub01';
  
  dicomdir1 = fullfile(EXPT.data_dir,'SUB01_20140904','dicoms');
  niftidir1 = fullfile(EXPT.data_dir,'SUB01_20140904','nii');
  paradir1  = fullfile(EXPT.data_dir,'SUB01_20140904','onsets');
  dicomdir2 = fullfile(EXPT.data_dir,'SUB01_20140910','dicoms');
  niftidir2 = fullfile(EXPT.data_dir,'SUB01_20140910','nii');
  paradir2  = fullfile(EXPT.data_dir,'SUB01_20140910','onsets');
  dicomdir3 = fullfile(EXPT.data_dir,'SUB01_20140911','dicoms');
  niftidir3 = fullfile(EXPT.data_dir,'SUB01_20140911','nii');
  paradir3  = fullfile(EXPT.data_dir,'SUB01_20140911','onsets');

  EXPT.subject(1).anatomical.run = TODO;
  EXPT.subject(1).anatomical.dicomdir = dicomdir1;
  EXPT.subject(1).anatomical.niftidir = niftidir1;
  
  EXPT.subject(1).functional(1).run = 5;
  EXPT.subject(1).functional(1).name = 'stim_words1';
  EXPT.subject(1).functional(1).dicomdir = dicomdir2;
  EXPT.subject(1).functional(1).niftidir = niftidir2;
  EXPT.subject(1).functional(1).para{1} = fullfile(paradir1,'subj01b_05_ICGT.para');
  
  %----------------------------------%
  %           SUBJECT 2              
  %----------------------------------%
  EXPT.subject(2).name = 'sub02';
  
  dicomdir1 = fullfile(EXPT.data_dir,'SUB02_20140908','dicoms');
  niftidir1 = fullfile(EXPT.data_dir,'SUB02_20140908','nii');
  paradir1  = fullfile(EXPT.data_dir,'SUB02_20140908','onsets');
  
  