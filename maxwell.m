function V2 = maxwell(d, I1, t, nseg, L, sigma)
    %MAXWELL Summary of this function goes here
    %   Detailed explanation goes here

    %Assuming axons are parallel and equal length

    %Step size for axons
    dx = L/nseg;

    V2 = zeros(nseg,length(t));
    for i=1:nseg
        for j=1:length(t)

            sumOfRemoteSectionEffects = 0;

            for k=1:nseg
                sumOfRemoteSectionEffects = sumOfRemoteSectionEffects + (I1(k,j)/sqrt(d^2 + (dx*abs(k-i))^2));
            end

            V2(i,j) = sumOfRemoteSectionEffects/(4*pi*sigma);
        end
    end
end

