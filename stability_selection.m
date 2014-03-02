function [rank c] = stability_selection(Y)
    
    V = size(Y,2);
    M = 25;
    rep = repmat(1:6,1,M);
    c = zeros(1,V);
    ii = 0;
    for n = 1:6
        y = Y(rep==n,:);
        dn = bsxfun(@minus,y,mean(y));
        fn = sum(dn.^2);
        for m = (n+1):6
            ii = ii + 1;
            y = Y(rep==m,:);
            dm = bsxfun(@minus,y,mean(y));
            fm = sum(dm.^2);
            c = c + sum(dn.*dm)./sqrt(fm.*fn);
        end
    end
    
    [c,rank] = sort(c/ii,'descend');