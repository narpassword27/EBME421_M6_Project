% Project EBME 421
% map182 ngm44 ixy40

clc
clear all
close all

[I,V,t] = runFirstNeuron();


figure(1); 	
ribbon(t,V.',0.5)
colormap(lines)    % change color map
shading interp    % interpolate colors across lines and faces
title('\bf V(t) in each Segment')
xlabel('Segment') 
ylabel('Time (ms)')
zlabel('Surface Potential (mv)')

figure(2);
ribbon(t,I.',0.5)
colormap(lines)    % change color map
shading interp    % interpolate colors across lines and faces
title('\bf I(t) in each Segment')
xlabel('Segment') 
ylabel('Time (ms)')
zlabel('Transmembrane Current (nA)')




d = 0.01; %cm
L = 10000; %cm
nseg = 21;
sigma = 1.79; %S/m CITE:https://www.researchgate.net/publication/14003644_The_electrical_conductivity_of_human_cerebrospinal_fluid_at_body_temperature

V2 = maxwell(d, I, t, nseg, L, sigma);

figure(3); 	
ribbon(t,V2.',0.5)
colormap(lines)    % change color map
shading interp    % interpolate colors across lines and faces
title('\bf Surface potentials on Second Axon')
xlabel('Segment') 
ylabel('Time (ms)')
zlabel('Surface Potential (mv)')


e = eFieldFinder(I, t, nseg, sigma);
















