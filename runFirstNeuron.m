function [I,t] = runFirstNeuron()
%RUNNEURON Summary of this function goes here
%   Detailed explanation goes here

%Cleanup last results
!Del /Q nrn\neuron1Result.txt

%Run first neuron file
!nrn\neuron1.hoc

%Allow Neuron to complete simulation before reading
pause(5);

%Look for neuron1Result.txt, load into memory
I = load('nrn\neuron1Result.txt').';
t = 0:0.025:50;
end

