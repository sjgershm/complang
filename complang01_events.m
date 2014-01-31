function [B names] = complang01_events(EXPT,model,subj)
    
    % Get beta image numbers for each complang event.
    %
    % USAGE: complang01_events(EXPT,model,subj)
    
    S = EXPT.subject(subj);
    
    switch subj
        case 1
            P = parse_para(S.functional(1).para{1},EXPT.TR);
            names = P.names_all(3:end)';
            P = parse_para(S.functional(13).para{1},EXPT.TR);
            names = [names; P.names_all(3:end)'];
            
        case 2
            P = parse_para(S.functional(3).para{1},EXPT.TR);
            names = P.names_all(3:end)';
            P = parse_para(S.functional(12).para{1},EXPT.TR);
            names = [names; P.names_all(3:end)'];
    end
    
    load(fullfile(EXPT.analysis_dir,S.name,['model',num2str(model)],'SPM'));
    
    B = cell(size(names));
    for i = 1:length(names)
        c = find_regressors(SPM.xX.name',names{i});
        B{i} = find(c);
        E(i) = isempty(B{i});
    end
    
    B(E) = [];
    names(E) = [];