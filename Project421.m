% Project EBME 421
% map182 ngm44 ixy40

clc
clear all
%close all

[I,V,t] = runFirstNeuron();


figure(1); 	
%an = animatedline(t,V.');

ribbon(t,V.',0.5)
colormap(summer)    % change color map
shading interp    % interpolate colors across lines and faces
title('\bf V(t) in each segment of first axon')
xlabel('Segment') 
ylabel('Time (ms)')
zlabel('Surface Potential (mv)')







figure(2);
ribbon(t,I.',0.5)
colormap(winter)    % change color map
shading interp    % interpolate colors across lines and faces
title('\bf I(t) in each segment of first axon')
xlabel('Segment') 
ylabel('Time (ms)')
zlabel('Transmembrane Current (nA)')




[F2,Fc2,d2,V2,t2] = runSecondNeuron(I, t);

figure(3); 	
ribbon(t,V2.',0.5)
colormap(spring)    % change color map
shading interp    % interpolate colors across lines and faces
title('\bf Surface potentials on second axon for sucessful activation')
xlabel('Segment') 
ylabel('Time (ms)')
zlabel('Surface Potential (mv)')

figure(4); 	
ribbon(t,fliplr(F2.'),0.5)
colormap(autumn)    % change color map
shading interp    % interpolate colors across lines and faces
title('\bf Surface potentials applied to second axon for varied distance')
xlabel('Distance (um)')
ylabel('Time (ms)')
yticklabels({'0','5','10','15'})
zlabel('Surface Potential (mv)')




figure(5);
plot(fliplr(Fc2))
title('\bf Decay of applied surface potential to second axon for varied distance ')
xlabel('Distance (um)') 
ylabel('Voltage (mV)')



%e = eFieldFinder(I, t, nseg, sigma);
















