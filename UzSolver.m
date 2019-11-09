function uz = UzSolver(z, a, c)
    lambda = 2*pi/c;
    syms A B C D;
    uz = A*exp(z) + B*exp(-z) + C*exp(lambda+z) + D*exp(lambda-z);
end