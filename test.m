clear
clc

syms U(z) A B C D a c z x eps theta
lambda = 2*pi/c;
eqn = U(z) == A*exp(z) + B*exp(-z) + C*exp(lambda+z) + D*exp(lambda-z);
cond = [U(0)==theta, U(a)==theta, U(inf)==0, U(-inf)==0];
uSol(z) = dsolve(eqn,cond)
