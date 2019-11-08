%% Project EBME 421

% Cortex model Richardson

%define constants for model of cortex
theta = 0.0:.001:0.3;%threshold
a = -10000:10000;%pulse width -- think it should be 0<a<80
epsilon1 = .05; %time constant, .05, .1, .15
epsilon2 = .1;
epsilon3 = .15;
c = -4:.1:0; %speed
z = -10000:10000; %distance, =x-ct
%t = ; %time
%x = ;%distance
beta = 0; %or really small
lambda = 2*pi/c; %from solved homogeneous
U = -10000:100000;%vector to be filled with function values U

%define coeffient matricies
coeff = zeros(1,3); %coefficient matrix
reg1 = zeros(1,3); %A1 B1 C1 D1
reg2 = zeros(1,3);%A2 B2 C2 D2
reg3 = zeros(1,3);%A3 B3 C3 D3

for i=-10000:10000 %how do i evaluate from negative inf to inf??
    if z(1i)<0
        coeff=reg1;
    elseif z(1i)<a(1i)
        coeff=reg2;
    else 
        coeff=reg3;
    end
    U(i)= 
end


        






