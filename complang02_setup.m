function EXPT = complang02_setup(type)
    
    % Calls functions that collect information about the 
    %   experiment into EXPT structure.
    %
    % USAGE: EXPT = complang02_setup(type)
    %   type: optional, 0-4. default is 0
    %       0: Individual cue, general target
    %       1: Individual cue, general target zero offset
    %       2: General cue, general target
    %       3: General cue, general target zero offset
    %       4: Princeton version
    %
    % 2015-04-22, Walid Bendris (wbendris@mit.edu): Function created
	
    if nargin < 1
        type = 0;
    end
    
    switch type
        case 0
            EXPT = complang02_setup_ICGT;
        case 1
            EXPT = complang02_setup_zero;
        case 2
            EXPT = complang02_setup_GCGT;
        case 3
            EXPT = complang02_setup_GCGT_zero;
        case 4
            EXPT = complang02_setup_princeton;
    end
end