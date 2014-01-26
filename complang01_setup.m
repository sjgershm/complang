function EXPT = complang01_setup
    
    % Collect information about the experiment into EXPT structure.
    %
    % USAGE: EXPT = complang01_setup
    
    % general info
    EXPT.TR = 2;        % repetition time
    EXPT.fwhm = 4;      % full-width half maximum for smoothing
    EXPT.analysis_dir = '../analysis';
    EXPT.data_dir = '../data';
    
    % subject info
    EXPT.subject(1).name = 'subj01';
    dicomdir1 = fullfile(EXPT.data_dir,'subj01','dicom');
    niftidir1 = fullfile(EXPT.data_dir,'subj01','nii');
    dicomdir2 = fullfile(EXPT.data_dir,'subj01b','dicom');
    niftidir2 = fullfile(EXPT.data_dir,'subj01b','nii');
    EXPT.subject(1).functional(1).run = 9;
    EXPT.subject(1).functional(1).name = 'TargetWords1';
    EXPT.subject(1).functional(1).dicomdir = dicomdir1;
    EXPT.subject(1).functional(1).niftidir = niftidir1;
    EXPT.subject(1).functional(2).run = 11;
    EXPT.subject(1).functional(2).name = 'TargetWords2';
    EXPT.subject(1).functional(2).dicomdir = dicomdir1;
    EXPT.subject(1).functional(2).niftidir = niftidir1;
    EXPT.subject(1).functional(3).run = 13;
    EXPT.subject(1).functional(3).name = 'TargetWords3';
    EXPT.subject(1).functional(3).dicomdir = dicomdir1;
    EXPT.subject(1).functional(3).niftidir = niftidir1;
    EXPT.subject(1).functional(4).run = 15;
    EXPT.subject(1).functional(4).name = 'DyLoc1';
    EXPT.subject(1).functional(4).dicomdir = dicomdir1;
    EXPT.subject(1).functional(4).niftidir = niftidir1;
    EXPT.subject(1).functional(5).run = 17;
    EXPT.subject(1).functional(5).name = 'DyLoc2';
    EXPT.subject(1).functional(5).dicomdir = dicomdir1;
    EXPT.subject(1).functional(5).niftidir = niftidir1;
    EXPT.subject(1).functional(6).run = 19;
    EXPT.subject(1).functional(6).name = 'TargetWords4';
    EXPT.subject(1).functional(6).dicomdir = dicomdir1;
    EXPT.subject(1).functional(6).niftidir = niftidir1;
    EXPT.subject(1).functional(7).run = 21;
    EXPT.subject(1).functional(7).name = 'TargetWords5';
    EXPT.subject(1).functional(7).dicomdir = dicomdir1;
    EXPT.subject(1).functional(7).niftidir = niftidir1;
    EXPT.subject(1).functional(8).run = 23;
    EXPT.subject(1).functional(8).name = 'TargetWords6';
    EXPT.subject(1).functional(8).dicomdir = dicomdir1;
    EXPT.subject(1).functional(8).niftidir = niftidir1;
    EXPT.subject(1).functional(9).run = 25;
    EXPT.subject(1).functional(9).name = 'DyLoc3';
    EXPT.subject(1).functional(9).dicomdir = dicomdir1;
    EXPT.subject(1).functional(9).niftidir = niftidir1;
    EXPT.subject(1).functional(10).run = 27;
    EXPT.subject(1).functional(10).name = 'DyLoc4';
    EXPT.subject(1).functional(10).dicomdir = dicomdir1;
    EXPT.subject(1).functional(10).niftidir = niftidir1;
    EXPT.subject(1).functional(11).run = 29;
    EXPT.subject(1).functional(11).name = 'Snippets1';
    EXPT.subject(1).functional(11).dicomdir = dicomdir1;
    EXPT.subject(1).functional(11).niftidir = niftidir1;
    EXPT.subject(1).functional(12).run = 31;
    EXPT.subject(1).functional(12).name = 'Snippets2';
    EXPT.subject(1).functional(12).dicomdir = dicomdir1;
    EXPT.subject(1).functional(12).niftidir = niftidir1;