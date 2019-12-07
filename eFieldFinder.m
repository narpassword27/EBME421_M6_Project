function e = eFieldFinder(I1, t, nseg, sigma)
    %EFIELDFINDER Summary of this function goes here
    %   Detailed explanation goes here
    %e = zeros(nseg,length(t));
    syms R
    
    for i=1:nseg
        for j=1:length(t)
            e(i,j) = (-I1(i,j))/(4*pi*sigma*(R^2));
        end
    end
end

