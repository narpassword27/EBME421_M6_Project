function out = uz(x,y)
    a = 20;
    eps = 0.1;
    c = -1;

    out(1) = y(2);
    out(2) =  (y(2)/c) - eps*y(1)/c^2 - (w(x) - w(x-a))/c;
end

function val = w(x)
    val = exp(-1*abs(x))/2;
end