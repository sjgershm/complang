function EXPT = complang02_setup
    
    % Collect information about the experiment into EXPT structure.
    %
    % USAGE: EXPT = complang02_setup
    
    % general info
    EXPT.TR = 2;        % repetition time
    EXPT.fwhm = 4;      % full-width half maximum for smoothing
    EXPT.analysis_dir = '/mindhive/nklab/projects/MACKEREL/analysis';
    EXPT.data_dir = '/mindhive/nklab/projects/MACKEREL/data';
    
    addpath(genpath('/mindhive/nklab/projects/compositionality_lang/scripts/spm8'));
    addpath('/mindhive/nklab/projects/MACKEREL/complang');
    addpath('/mindhive/nklab/projects/MACKEREL/fmri');
    
    %----------------------------------%
    %           SUBJECT 1              
    %----------------------------------%
    