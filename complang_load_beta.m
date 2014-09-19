function [beta, masks, names] = complang_load_beta(EXPT,model,submat,F,getall)
    
    % Load beta images for each language ROI.
    %
    % USAGE: complang_load_beta(EXPT,model,submat,F,getall)
    %
    % INPUTS:
    %   EXPT - matlab structure
    %   model - model number
    %   submat - vector of subjects
    %   F - name of session from which to grab event names (note that data
    %       from all sessions will be loaded)
    %   getall - flag indicating whether or not to extract all the event
    %       names in the session (getall=1) or just the ones appearing in that
    %       session (getall=0)
    %
    % OUTPUTS:
    %   A beta_*.mat file will be saved in the subject's analysis
    %   directory. This file includes a cell array of beta values (each
    %   cell contains a nRepetition x nVoxels data matrix), a "names" cell array indicating
    %   the name of each event, and a "mask" cell array containing the mask for each language region.
    %
    % Sam Gershman, September 2014
    
    if nargin < 4; names = F; end
    if nargin < 5; getall = 0; end
    
    for subj = submat
        disp(num2str(subj));
        
        masks = complang02_langloc_roi(EXPT,model,subj);
        
        if nargin < 4
            names = fmri_events(EXPT,model,subj,F,getall);
            names(strcmp(names,'cue'))=[];
            names(strcmp(names,'target'))=[];
        end
        beta = fmri_load_beta(EXPT,model,subj,names');
        
        S = EXPT.subject(subj);
        M = ['model',num2str(model)];
        if nargin > 4
            save(fullfile(EXPT.analysis_dir,S.name,M,['beta_',F,'_',S.name]),'beta','masks','names');
        end
        
    end