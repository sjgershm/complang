function files = fmri_get(filename)
    
    % Get filenames for nifti images.
    %
    % USAGE: files = fmri_get(filename)
    %
    % INPUTS:
    %   filename - regular expression specifying set of file names
    %
    % OUPUTS:
    %   files - character array of file names (including full path)
    %
    % Sam Gershman, Jan 2014
    
    files = dir(fullfile(filedir,filename));
    files = dir2char(files,filedir);
    
end

function x = dir2char(f,d)
    
    for i = 1:length(f)
        x(i,:) = fullfile(d,f(i).name);
    end
    
end