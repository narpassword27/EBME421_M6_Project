clc
clear all
close all

%Constants
Specific_Membrane_Resistance = 3000; %ohm.cm2
Axoplasmic_Resistance = 200; %ohm.cm
Specific_Membrane_Capicatance = 1e-6; %uF/cm^2 (Given in slides)
Diameter = 10e-4; %cm
Length = 1; %cm
Number_Compartments = 11; %#
dx = Length/Number_Compartments; %cm


values = calc_R_C(Specific_Membrane_Resistance, Axoplasmic_Resistance, Specific_Membrane_Capicatance, Diameter, dx);
Rm = values(1) %ohms
Ri = values(2) %ohms
Cm = values(3) %fahrads












hhrun(10, 500, -65, 0.5, 0.06, 0.5,1) 