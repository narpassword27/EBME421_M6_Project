function [I,t] = runFirstNeuron()
%RUNNEURON Summary of this function goes here
%   Detailed explanation goes here

%Cleanup last results
!Del /Q nrn\neuron1Result.txt

%Run first neuron file
!nrn\neuron1.hoc

%Look for neuron1Result.txt, load into memory
resultFile = load('nrn\neuron1Result.txt')











I=0;
t=0;
end

