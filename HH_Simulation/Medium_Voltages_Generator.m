% Written by Michael Pallotta (map182)

clc
clear

%Params
conductivity = 1; %s/m
is = 0.001; %A
d = 0.005; %m
diam = 10e-6; %m
nseg = 21;
l = 0.1; %m
dl = l/nseg; %m

%Length of array
steps = 1:nseg;

%Capture more decimal points
format long

%Populate array
for i = steps
    
    dseg = abs(11 - i);
    R = sqrt( (dseg*dl)^2 + (d + diam/2)^2 );
    % Estimating potential for point in center of axon in space, as average
    % of potential across cross section through midpoint of axon
    
    voltages(i) = - is/( 4*pi*conductivity*R);
    
    %Print to command window for export
    disp(voltages(i))
    
end

plot(steps,voltages), xlabel('Segment'), ylabel('Estimated average surface potential (V)'), title('Extracellular Stimulation Potentials')






