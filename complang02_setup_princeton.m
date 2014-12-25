function EXPT = complang02_setup_princeton(varargin)

    EXPT.site = 'PU';
    EXPT.multiple_anatomicals = 0;
    
    idx = 1;
    while idx <= nargin
        argval = varargin{idx}; idx = idx + 1;
        
        switch argval
          case {'multiple_anatomicals'}
            EXPT.multiple_anatomicals = 1;
          otherwise
            fprintf('error: unknown argument %s\n',argval);return;
        end
    end
        
    
% Collect information about the experiment into EXPT structure.
%
% USAGE: EXPT = complang02_setup
  
% general info
  EXPT.TR = 2;        % repetition time
  EXPT.fwhm = 4;      % full-width half maximum for smoothing
  
  %  EXPT.analysis_dir = '/Users/fpereira/Store/Datasets/MITPU/analysis02';
  %  EXPT.data_dir     = '/Users/fpereira/Store/Datasets/MITPU/data02';  

  if (EXPT.multiple_anatomicals == 1) 
      EXPT.analysis_dir = '/Volumes/Store/Datasets/PU/analysis02_ma';
      EXPT.data_dir     = '/Volumes/Store/Datasets/PU/data02_ma';
  else
      EXPT.analysis_dir = '/Volumes/Store/Datasets/PU/analysis02';
      EXPT.data_dir     = '/Volumes/Store/Datasets/PU/data02';
  end

  dir_nifti    = 'nifti';
  dir_onsets   = 'onsets';
  dir_movement = 'movement';
                      
  %addpath(genpath('/mindhive/nklab/projects/compositionality_lang/scripts/spm8'));
  addpath(genpath('/usr/local/src/spm8/'));
  addpath('/usr/local/src/MIT/complang');
  addpath('/usr/local/src/MIT/fmri');
  
  %----------------------------------%----------------------------------%
  %
  %           SUBJECT 1              
  %
  %----------------------------------%----------------------------------%
  s = 1;
  
  EXPT.subject(s).name = 'SUB01';
  EXPT.subject(s).dir_movement = dir_movement;
  
  % session 1: sentences
  dicomdirs{1} = fullfile(EXPT.data_dir,'SUB01_20140904','dcm');
  niftidirs{1} = fullfile(EXPT.data_dir,'SUB01_20140904',dir_nifti);
  paradirs{1}  = fullfile(EXPT.data_dir,'SUB01_20140904',dir_onsets);
  dates{1}     = '20140904';
  % session 2: simwords + language localizer
  dicomdirs{2} = fullfile(EXPT.data_dir,'SUB01_20140910','dcm');
  niftidirs{2} = fullfile(EXPT.data_dir,'SUB01_20140910',dir_nifti);
  paradirs{2}  = fullfile(EXPT.data_dir,'SUB01_20140910',dir_onsets);
  dates{2}     = '20140910';
  % session 3: sentences
  dicomdirs{3} = fullfile(EXPT.data_dir,'SUB01_20140911','dcm');
  niftidirs{3} = fullfile(EXPT.data_dir,'SUB01_20140911',dir_nifti);
  paradirs{3}  = fullfile(EXPT.data_dir,'SUB01_20140911',dir_onsets);
  dates{3}     = '20140911';
  % session 4: sentences
  dicomdirs{4} = fullfile(EXPT.data_dir,'SUB01_20140917','dcm');
  niftidirs{4} = fullfile(EXPT.data_dir,'SUB01_20140917',dir_nifti);
  paradirs{4}  = fullfile(EXPT.data_dir,'SUB01_20140917',dir_onsets);
  dates{4}     = '20140917';
  
  
  if EXPT.multiple_anatomicals == 0
      % default, use the anatomical from the session with stimuli
      sidx = 2;
      EXPT.subject(s).anatomical.run = 2;
      EXPT.subject(s).anatomical.session = 2;
      EXPT.subject(s).anatomical.dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical.niftidir = niftidirs{sidx};
      EXPT.subject(s).anatomical.date     = dates{sidx};
  else
      % alternative, if we can have one structural per run
      sidx = 1;
      aidx = 1;
      EXPT.subject(s).anatomical(aidx).run = 2;
      EXPT.subject(s).anatomical(aidx).session = sidx;
      EXPT.subject(s).anatomical(aidx).dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical(aidx).niftidir = niftidirs{sidx}
      EXPT.subject(s).anatomical(aidx).date     = dates{sidx};
      sidx = sidx + 1;
      aidx = aidx + 1;
      EXPT.subject(s).anatomical(aidx).run = 2;
      EXPT.subject(s).anatomical(aidx).session = sidx;
      EXPT.subject(s).anatomical(aidx).dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical(aidx).niftidir = niftidirs{sidx};
      EXPT.subject(s).anatomical(aidx).date     = dates{sidx};
      sidx = sidx + 1;
      aidx = aidx + 1;
      EXPT.subject(s).anatomical(aidx).run = 2;
      EXPT.subject(s).anatomical(aidx).session = sidx;
      EXPT.subject(s).anatomical(aidx).dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical(aidx).niftidir = niftidirs{sidx};
      EXPT.subject(s).anatomical(aidx).date     = dates{sidx};
      sidx = sidx + 1;
      aidx = aidx + 1;
      EXPT.subject(s).anatomical(aidx).run = 2;
      EXPT.subject(s).anatomical(aidx).session = sidx;
      EXPT.subject(s).anatomical(aidx).dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical(aidx).niftidir = niftidirs{sidx};
      EXPT.subject(s).anatomical(aidx).date     = dates{sidx};
      sidx = sidx + 1;
      aidx = aidx + 1;
  end
      
  sidx = 1;
  fidx = 1;

              
  %% session 1
  
  EXPT.subject(s).functional(fidx).run = 4;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 6;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 8;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_3';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 10;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_4';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 12;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_5';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 14;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_6';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 16;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_7';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 18;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_8';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 20;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetA_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 22;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetB_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;

  sidx = sidx + 1;
  
  %% session 2
  
  EXPT.subject(s).functional(fidx).run = 4;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx}
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 6;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 8;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words3';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 10;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words4';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 12;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words5';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 14;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words6';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 16;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words7';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 18;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words8';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 20;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'LangLoc_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 22;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'LangLoc_2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  
  sidx = sidx + 1;
  
  %% session 3
  
  EXPT.subject(s).functional(fidx).run = 4;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 6;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 8;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_3';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 10;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_4';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 12;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_5';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 14;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_6';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 16;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_7';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 18;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_8';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 20;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetA_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 22;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetB_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;

  sidx = sidx + 1;
  
  %% session 4
  
  EXPT.subject(s).functional(fidx).run = 4;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 6;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 8;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_3';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 10;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_4';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 12;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_5';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 14;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_6';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 16;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_7';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 18;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_8';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 20;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetA_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 22;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetB_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;

  sidx = sidx + 1;

  
  %----------------------------------%----------------------------------%
  %
  %           SUBJECT 2             
  %
  %----------------------------------%----------------------------------%
  s = 2;
  
  EXPT.subject(s).name = 'SUB02';
  EXPT.subject(s).dir_movement = dir_movement;
  
  % session 1: sentences
  dicomdirs{1} = fullfile(EXPT.data_dir,'SUB02_20140908','dcm');
  niftidirs{1} = fullfile(EXPT.data_dir,'SUB02_20140908',dir_nifti);
  paradirs{1}  = fullfile(EXPT.data_dir,'SUB02_20140908',dir_onsets);
  dates{1}     = '20140908';
  % session 2: simwords + language localizer
  dicomdirs{2} = fullfile(EXPT.data_dir,'SUB02_20140918','dcm');
  niftidirs{2} = fullfile(EXPT.data_dir,'SUB02_20140918',dir_nifti);
  paradirs{2}  = fullfile(EXPT.data_dir,'SUB02_20140918',dir_onsets);
  dates{2}     = '20140918';
  % session 3: sentences
  dicomdirs{3} = fullfile(EXPT.data_dir,'SUB02_20141006','dcm');
  niftidirs{3} = fullfile(EXPT.data_dir,'SUB02_20141006',dir_nifti);
  paradirs{3}  = fullfile(EXPT.data_dir,'SUB02_20141006',dir_onsets);
  dates{3}     = '20141006';
  % session 4: sentences
  dicomdirs{4} = fullfile(EXPT.data_dir,'SUB02_20141008','dcm');
  niftidirs{4} = fullfile(EXPT.data_dir,'SUB02_20141008',dir_nifti);
  paradirs{4}  = fullfile(EXPT.data_dir,'SUB02_20141008',dir_onsets);
  dates{4}     = '20141008';
  
  
  if EXPT.multiple_anatomicals == 0
      % default, use the anatomical from the session with stimwords
      sidx = 1;
      EXPT.subject(s).anatomical.run = 2;
      EXPT.subject(s).anatomical.session = sidx;
      EXPT.subject(s).anatomical.dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical.niftidir = niftidirs{sidx};
      EXPT.subject(s).anatomical.date     = dates{sidx};
  else
      % alternative, if we can have one structural per session
      sidx = 1;
      aidx = 1;
      EXPT.subject(s).anatomical(aidx).run = 2;
      EXPT.subject(s).anatomical(aidx).session = sidx;
      EXPT.subject(s).anatomical(aidx).dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical(aidx).niftidir = niftidirs{sidx};
      EXPT.subject(s).anatomical(aidx).date     = dates{sidx};
      sidx = sidx + 1;
      aidx = aidx + 1;
      EXPT.subject(s).anatomical(aidx).run = 2;
      EXPT.subject(s).anatomical(aidx).session = sidx;
      EXPT.subject(s).anatomical(aidx).dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical(aidx).niftidir = niftidirs{sidx};
      EXPT.subject(s).anatomical(aidx).date     = dates{sidx};
      sidx = sidx + 1;
      aidx = aidx + 1;
      EXPT.subject(s).anatomical(aidx).run = 2;
      EXPT.subject(s).anatomical(aidx).session = sidx;
      EXPT.subject(s).anatomical(aidx).dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical(aidx).niftidir = niftidirs{sidx};
      EXPT.subject(s).anatomical(aidx).date     = dates{sidx};
      sidx = sidx + 1;
      aidx = aidx + 1;
      EXPT.subject(s).anatomical(aidx).run = 2;
      EXPT.subject(s).anatomical(aidx).session = sidx;
      EXPT.subject(s).anatomical(aidx).dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical(aidx).niftidir = niftidirs{sidx};
      EXPT.subject(s).anatomical(aidx).date     = dates{sidx};
      sidx = sidx + 1;
      aidx = aidx + 1;
  end
      
  sidx = 1;
  fidx = 1;
  
  %% session 1
  
  EXPT.subject(s).functional(fidx).run = 4;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx}
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 6;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 8;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words3';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 10;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words4';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 12;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words5';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 14;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words6';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 16;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words7';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 18;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words8';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 20;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'LangLoc_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 22;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'LangLoc_2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  
  sidx = sidx + 1;
  
  %% session 2
  
  EXPT.subject(s).functional(fidx).run = 4;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 6;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 8;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_3';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 10;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_4';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 12;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_5';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 14;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_6';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 16;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_7';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 18;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_8';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 20;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetA_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 22;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetB_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;

  sidx = sidx + 1;
  
  
  %% session 3
  
  EXPT.subject(s).functional(fidx).run = 4;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 6;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 8;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_3';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 10;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_4';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 12;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_5';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 14;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_6';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 16;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_7';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 18;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_8';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 20;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetA_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 22;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetB_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;

  sidx = sidx + 1;
  
  %% session 4
  
  EXPT.subject(s).functional(fidx).run = 4;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 6;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 8;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_3';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 10;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_4';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 12;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_5';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 14;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_6';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 16;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_7';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 18;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_8';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 20;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetA_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 22;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetB_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;

  sidx = sidx + 1;
  
  %----------------------------------%----------------------------------%
  %
  %           SUBJECT 3              
  %
  %----------------------------------%----------------------------------%
  s = 3;
  
  EXPT.subject(s).name = 'SUB03';
  EXPT.subject(s).dir_movement = dir_movement;
  
  % session 1: sentences
  dicomdirs{1} = fullfile(EXPT.data_dir,'SUB03_20140904','dcm');
  niftidirs{1} = fullfile(EXPT.data_dir,'SUB03_20140904',dir_nifti);
  paradirs{1}  = fullfile(EXPT.data_dir,'SUB03_20140904',dir_onsets);
  dates{1}     = '20140904';
  % session 2: simwords + language localizer
  dicomdirs{2} = fullfile(EXPT.data_dir,'SUB03_20140910','dcm');
  niftidirs{2} = fullfile(EXPT.data_dir,'SUB03_20140910',dir_nifti);
  paradirs{2}  = fullfile(EXPT.data_dir,'SUB03_20140910',dir_onsets);
  dates{2}     = '20140910';
  % session 3: sentences
  dicomdirs{3} = fullfile(EXPT.data_dir,'SUB03_20140911','dcm');
  niftidirs{3} = fullfile(EXPT.data_dir,'SUB03_20140911',dir_nifti);
  paradirs{3}  = fullfile(EXPT.data_dir,'SUB03_20140911',dir_onsets);
  dates{3}     = '20140911';
  % session 4: sentences
  dicomdirs{4} = fullfile(EXPT.data_dir,'SUB03_20140917','dcm');
  niftidirs{4} = fullfile(EXPT.data_dir,'SUB03_20140917',dir_nifti);
  paradirs{4}  = fullfile(EXPT.data_dir,'SUB03_20140917',dir_onsets);
  dates{4}     = '20140917';
  
  
  if EXPT.multiple_anatomicals == 0
      % default, use the anatomical from the session with stimuli
      sidx = 2;
      EXPT.subject(s).anatomical.run = 2;
      EXPT.subject(s).anatomical.session = 2;
      EXPT.subject(s).anatomical.dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical.niftidir = niftidirs{sidx};
      EXPT.subject(s).anatomical.date     = dates{sidx};
  else
      % alternative, if we can have one structural per run
      sidx = 1;
      aidx = 1;
      EXPT.subject(s).anatomical(aidx).run = 2;
      EXPT.subject(s).anatomical(aidx).session = sidx;
      EXPT.subject(s).anatomical(aidx).dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical(aidx).niftidir = niftidirs{sidx}
      EXPT.subject(s).anatomical(aidx).date     = dates{sidx};
      sidx = sidx + 1;
      aidx = aidx + 1;
      EXPT.subject(s).anatomical(aidx).run = 2;
      EXPT.subject(s).anatomical(aidx).session = sidx;
      EXPT.subject(s).anatomical(aidx).dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical(aidx).niftidir = niftidirs{sidx};
      EXPT.subject(s).anatomical(aidx).date     = dates{sidx};
      sidx = sidx + 1;
      aidx = aidx + 1;
      EXPT.subject(s).anatomical(aidx).run = 2;
      EXPT.subject(s).anatomical(aidx).session = sidx;
      EXPT.subject(s).anatomical(aidx).dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical(aidx).niftidir = niftidirs{sidx};
      EXPT.subject(s).anatomical(aidx).date     = dates{sidx};
      sidx = sidx + 1;
      aidx = aidx + 1;
      EXPT.subject(s).anatomical(aidx).run = 2;
      EXPT.subject(s).anatomical(aidx).session = sidx;
      EXPT.subject(s).anatomical(aidx).dicomdir = dicomdirs{sidx};
      EXPT.subject(s).anatomical(aidx).niftidir = niftidirs{sidx};
      EXPT.subject(s).anatomical(aidx).date     = dates{sidx};
      sidx = sidx + 1;
      aidx = aidx + 1;
  end
      
  sidx = 1;
  fidx = 1;

              
  %% session 1
  
  EXPT.subject(s).functional(fidx).run = 4;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 6;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 8;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_3';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 10;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_4';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 12;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_5';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 14;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_6';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 16;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_7';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 18;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_8';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 20;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetA_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 22;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetB_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;

  sidx = sidx + 1;
  
  %% session 2
  
  EXPT.subject(s).functional(fidx).run = 4;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx}
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 6;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 8;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words3';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 10;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words4';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 12;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words5';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 14;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words6';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 16;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words7';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 18;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_words8';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 20;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'LangLoc_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 22;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'LangLoc_2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  
  sidx = sidx + 1;
  
  %% session 3
  
  EXPT.subject(s).functional(fidx).run = 4;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 6;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 8;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_3';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 10;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_4';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 12;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_5';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 14;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_6';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 16;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_7';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 18;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_8';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 20;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetA_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 22;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetB_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;

  sidx = sidx + 1;
  
  %% session 4
  
  EXPT.subject(s).functional(fidx).run = 4;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 6;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_2';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 8;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_3';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 10;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_4';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 12;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_5';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 14;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_6';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 16;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_7';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 18;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesAllSubset_8';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 20;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetA_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;
  EXPT.subject(s).functional(fidx).run = 22;
  EXPT.subject(s).functional(fidx).session = sidx;
  EXPT.subject(s).functional(fidx).name = 'stim_sentencesSubsetB_1';
  EXPT.subject(s).functional(fidx).length   = stimToLength(EXPT.subject(s).functional(fidx).name);
  EXPT.subject(s).functional(fidx).dicomdir = dicomdirs{sidx};
  EXPT.subject(s).functional(fidx).niftidir = niftidirs{sidx};
  EXPT.subject(s).functional(fidx).date     = dates{sidx};
  EXPT.subject(s).functional(fidx).para{1} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT.para',EXPT.subject(s).functional(fidx).name));
  EXPT.subject(s).functional(fidx).para{3} = fullfile(paradirs{sidx},sprintf('data_%s_ICGT_zero.para',EXPT.subject(s).functional(fidx).name));
  fidx = fidx + 1;

  sidx = sidx + 1;
  
  
function [length] = stimToLength(runName)
      
    switch runName
          
      case {'stim_sentencesAllSubset_1',...
            'stim_sentencesAllSubset_2',...
            'stim_sentencesAllSubset_3',...
            'stim_sentencesAllSubset_4',...
            'stim_sentencesAllSubset_5',...
            'stim_sentencesAllSubset_6',...
            'stim_sentencesAllSubset_7',...
            'stim_sentencesAllSubset_8'}
        length = 220;
        
      case {'stim_sentencesSubsetA_1',...
            'stim_sentencesSubsetB_1',...
            'stim_sentencesSubsetA_2',...
            'stim_sentencesSubsetB_2',...
            'stim_sentencesSubsetA_3',...
            'stim_sentencesSubsetB_3'}
        length = 226;
        
      case {'stim_words1',...
            'stim_words2',...
            'stim_words3',...
            'stim_words4',...
            'stim_words5',...
            'stim_words6',...
            'stim_words7',...
            'stim_words8'}
        length = 226;
        
      case {'LangLoc_1',
            'LangLoc_2'}
        length = 179;
        
      otherwise
        length = 0;
    end
    

