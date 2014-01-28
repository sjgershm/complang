function SPM = fmri_model(EXPT,model,submat)
    
    % First-level GLM analysis.
    %
    % USAGE: SPM = fmri_model(EXPT,model,[submat])
    %
    % INPUTS:
    %   EXPT object
    %   model - model number
    %   submat (optional) - vector of subjects to estimate (default: all subjects)
    %
    % OUTPUTS:
    %   SPM - model structure
    %
    % Sam Gershman, Jan 2014
    
    if nargin < 3 || isempty(submat)
        submat = 1:length(EXPT.subject);
    end
    
    cdir = pwd;
    defaults = spm_get_defaults;
    warning off all
    
    % SPM settings
    SPM.xY.RT = EXPT.TR;
    SPM.xBF.T = defaults.stats.fmri.fmri_t;
    SPM.xBF.T0 = defaults.stats.fmri.fmri_t0;
    SPM.xBF.dt = SPM.xY.RT/SPM.xBF.T;
    SPM.xBF.UNITS   = 'secs';     % time units ('scans', 'secs')
    SPM.xBF.name    = 'hrf';      % basis function type
    SPM.xBF.factor = [];
    SPM.xBF.Volterra = 1;
    SPM.xBF = spm_get_bf(SPM.xBF);
    SPM.xGX.iGXcalc = 'none';     % global intensity normalization (note: 'none' actually means 'session-specific')
    SPM.xVi.form    = 'AR(1)';    % correct for serial correlations ('none', 'AR(1)')
    
    for subj = submat;
        
        S = EXPT.subject(subj);
        disp(S.name);
        modeldir = fullfile(EXPT.analysis_dir,S.name,['model',num2str(model)]);
        if isdir(modeldir); rmdir(modeldir); end
        mkdir(modeldir);
        cd(modeldir);
        
        % get para file names and toss out runs with no para file
        para = EXPT.modelfun(EXPT,subj,model);
        for i = 1:length(para)
            if isempty(para{i})
                bad(i) = 1;
            else
                bad(i) = 0;
            end
        end
        para(bad==1) = [];
        S.functional(bad==1) = [];
        
        % specify functional image files
        for r = 1:length(S.functional)
            niftidir = S.functional(r).niftidir;
            run = S.functional(r).run;
            SPM.xY.P{r} = fmri_get(niftidir,sprintf('sw*-%3.4d-*',run));
            SPM.nscan(r) = size(SPM.xY.P{r},1);
        end
        SPM.xY.P = vertcat(SPM.xY.P{:});
        
        %loop through sessions
        for i = 1:length(S.functional)
            
            % load movement regressors
            mrp = fullfile(EXPT.analysis_dir,S,'movement',['rp_',num2str(i)]);
            SPM.Sess(i).C.C = load(mrp);
            for j = 1:size(SPM.Sess(i).C.C,2)
                SPM.Sess(i).C.name{j} = ['movement',num2str(j)];
            end
            
            % load regressor info (names, onsets and durations)
            reg = parse_para(para{i},EXPT.TR);
            
            % configure the input structure array
            n = 0;
            for j=1:numel(reg.onsets)
                if ~isempty(reg.onsets{j})
                    n = n + 1;
                    U.name = reg.names{j};
                    U.ons  = reg.onsets{j}(:);
                    U.dur  = reg.durations(j) .* ones(size(U.ons));
                    U.P    = struct('name', 'none', 'h', 0);
                    SPM.Sess(i).U(n) = U;
                end
            end
            
            % high-pass filter
            SPM.xX.K(i).HParam = defaults.stats.fmri.hpf;
        end
        
        delete('mask.img'); % make spm re-use directory without prompting
        SPM = spm_fmri_spm_ui(SPM);
        SPM = spm_spm(SPM);                     %estimate model
    end
    
    cd(cdir);       % return to original directory