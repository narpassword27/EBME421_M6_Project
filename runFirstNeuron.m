function [I,V,t] = runFirstNeuron()
%RUNNEURON Summary of this function goes here
%   Detailed explanation goes here

%Cleanup last results
!Del /Q nrn\neuron1ResultI.txt
!Del /Q nrn\neuron1ResultV.txt

%Run first neuron file
!nrn\neuron1.hoc

%Allow Neuron to complete simulation before reading
pause(5);

%Look for neuron1Result.txt, load into memory
I = load('nrn\neuron1ResultI.txt');
V = load('nrn\neuron1ResultV.txt');
t = 0:0.025:50;
end

