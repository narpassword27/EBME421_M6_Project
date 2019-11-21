clc
clear all


a=20;
theta = 0.2;


shooting_method(@uz,0.001,1e-6,0,1,[a theta; 0 theta],'fd');









