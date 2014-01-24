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
    MM = zeros(4,4,numel(P));
    for j=1:numel(P)
        MM(:,:,j) = spm_get_space(P{j});
    end
    for j=1:numel(P)
        spm_get_space(P{j}, M\MM(:,:,j));
    end