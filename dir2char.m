function x = dir2char(f,d)
    
    for i = 1:length(f)
        x{i} = fullfile(d,f(i).name);
    end
    x = char(x);
    
end