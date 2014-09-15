% INPUTS:
%   SPM:    SPM structure for a subject
%   name:   name of contrast
% 
% 2014-09-15 Initial function (Walid)

function SPM = complang02_make_langloc_roi(SPM,name)
    Ic=length(SPM.xCon)+1;    
    for i=1:length(SPM.xCon)
        if isequal(name,SPM.xCon(i).name)
            response = input('S-N exists, overwrite it? (y/n)','s');
            Ic=i;
            %if ~strcmp(response,'y'); return; end
            if ~isequal('y',response)
                return;
            end
        end
    end 
    c=find_regressors(SPM.xX.name,'S')-find_regressors(SPM.xX.name,'N');
    sX = SPM.xX.xKXs;
    Fc = spm_FcUtil('Set',name, 'T', 'c', c', sX);
    SPM.xCon(Ic)=Fc;
    [SPM] = spm_contrasts(SPM,Ic);
end