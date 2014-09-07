function complang_load_beta(EXPT,model,submat,F,getall)
    
    if nargin < 5; getall = 0; end
    
    for subj = submat
        disp(num2str(subj));
    
        masks = complang02_langloc_roi(EXPT,model,subj);
        names = fmri_events(EXPT,model,subj,F,getall);
        names(strcmp(names,'cue'))=[];
        names(strcmp(names,'target'))=[];
        beta = fmri_load_beta(EXPT,model,subj,names');
        
        S = EXPT.subject(subj);
        M = ['model',num2str(model)];
        save(fullfile(EXPT.analysis_dir,S.name,M,['beta_',F,'_',S.name]),'beta','masks');
        
    end