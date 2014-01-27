function coreg_apply(P,T)
    
    % Apply coregistration transformation to a set of images.
    %
    % USAGE: coreg_apply(P,T)
    %
    % INPUTS:
    %   P - cell array of image names
    %   T - transformation paramgers from spm_coreg
    %
    % Sam Gershman, Jan 2014
    
    M  = spm_matrix(T);
    P = P(:);
    MM = zeros(4,4);
    for j=1:numel(P)
        MM = spm_get_space(P{j});
        spm_get_space(P{j},M\MM);
    end