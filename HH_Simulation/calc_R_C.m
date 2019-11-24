%Code written by Michael Pallotta (map182)
function values = calc_R_C(SMR,AR,SMC,D,Dx)
%Calculate membrane resistance,capacitance and intercompartmental resistance

%Rm
values(1) = SMR / (Dx *  pi * D);

%Ri
values(2) = AR / (pi * (D/2)^2) * Dx;

%Cm
values(3) = SMC * Dx *  pi * D;

end

