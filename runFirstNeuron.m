function [I,V,t] = runFirstNeuron()
%RUNNEURON Summary of this function goes here
%   Detailed explanation goes here

% %Cleanup last results
% if ismac || isunix
%     % Mac and Linux platform use rm -f to -force the ReMoval of a file.
%     % Also, note that forwardslash
%     !rm -f nrn/neuron1ResultI.txt
%     !rm -f nrn/neuron1ResultV.txt
% elseif ispc
%     % Windows platform uses Del /Q to DELete files /Quietly
%     % Note the backslash
%     !Del /Q nrn\neuron1ResultI.txt
%     !Del /Q nrn\neuron1ResultV.txt
% else
%     disp('Platform not supported')
% end
% 
% %Run first neuron file
% !nrn\neuron1.hoc
% 
% %Allow Neuron to complete simulation before reading
% pause(5);

%Look for neuron1Result[I,V].txt, load them into memory
filename1 = '';
filename2 = '';

if ismac || isunix
    % Mac and Linux use forwardslash
    filename1 = 'nrn/neuron1ResultI.txt';
    filename2 = 'nrn/neuron1ResultV.txt';
elseif ispc
    % Windows uses backslashes
    filename1 = 'nrn\neuron1ResultI.txt';
    filename2 = 'nrn\neuron1ResultV.txt';
else
    disp('Platform not supported')
end



I = load(filename1);
V = load(filename2);
t = 0:0.025:15;
end

