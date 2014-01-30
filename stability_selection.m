function [c rank] = stability_selection(Y)
    
    [N V] = size(Y{1});
    
    for n = 1:N
        for i = 1:length(Y)
            y{n}(i,:) = Y{i}(n,:);
        end
    end
    
    c = zeros(1,V);
    ii = 0;
    for n = 1:N
        dn = bsxfun(@minus,y{n},mean(y{n}));
        fn = sum(dn.^2);
        for m = (n+1):N
            ii = ii + 1;
            dm = bsxfun(@minus,y{m},mean(y{m}));
            fm = sum(dm.^2);
            c = c + sum(dn.*dm)./sqrt(fm.*fn);
        end
    end
    
    [c,rank] = sort(c/ii,'descend');