function [F,Fc,d,V,t] = runSecondNeuron(I, t)
%RUNSECONDNEURON Summary of this function goes here
%   Detailed explanation goes here

% 
% %Clear old results
% !Del /Q nrn\neuron2ResultV.txt
% !Del /Q nrn\neuron2TrialsV.txt
% 
% 
% %Create distances array as farthest to closest. Values are in microns
% distance = fliplr(1:0.1:200); %um
% %distance = 1:1:400; %um
% i=0;
% 
% 
% %Set internal variables we may need to parameterize later
% L = 10; %cm
% nseg = 201;
% sigma = 1.79; %S/m CITE:https://www.researchgate.net/publication/14003644_The_electrical_conductivity_of_human_cerebrospinal_fluid_at_body_temperature
% 
% 
% %neuron2.hoc creates a results file when the applied stimulation
% %sucessfully activates the second axon. We may loop while this file is
% %absent, with a sentinel value just in case
% while (i < size(distance,2))% && ~isfile("nrn\neuron2ResultV.txt"))
% 
%     %Do Maxwell for Selected d
%     dist = distance(i+1)*(10^-4); %cm
%     V2 = maxwell(dist, I, t, nseg, L, sigma);
% 
%     %Clear old maxwell values
%     !Del /Q nrn\maxwellV.txt
%     
%     %Write out voltages to maxwell stimulation
%     writematrix([t;V2],'nrn\maxwellV.txt','Delimiter','tab');
% 
%     %Run second neuron file
%     !nrn\neuron2.hoc
% 
%     %Delay so neuron can close sucessfully
%     pause(1);
%     
%     %Increment sentinel
%     i=i+1;
% end

F = load("nrn\neuron2TrialsV.txt");
Fc = max(F.');
d = fliplr((200-size(F,1)+1):1:200);
V = load("nrn\neuron2ResultV.txt");
t = 0:0.025:15;
end

