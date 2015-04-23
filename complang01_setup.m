function EXPT = complang01_setup(type)
    
    % Calls functions that collect information about the 
    %   experiment into EXPT structure.
    %
    % Optional argument 'type' corresponds with resulting model number of
    %   EXPT structure
    %
    % USAGE: EXPT = complang01_setup(type)
    %   type: optional, 1-4. default is 1
    %       1: Individual cue, general target
    %       2: General cue, general target
    %       3: Individual cue, general target zero offset
    %       4: General cue, general target zero offset
    %
    % 2015-04-22, Walid Bendris (wbendris@mit.edu): Function created
	
    if nargin < 1
        type = 0;
    end
    
    switch type
        case 1
            EXPT = complang01_setup_ICGT;
        case 2
            EXPT = complang01_setup_GCGT;
        case 3
            EXPT = complang01_setup_zero;
        case 4
            EXPT = complang01_setup_GCGT_zero;
    end
end