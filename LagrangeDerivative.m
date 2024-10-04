function dy = LagrangeDerivative(x, y, xi) %Tính ra giá trị đạo hàm bằng phương pháp Lagrange
    n = length(x);
    syms t;
    L = 0;
    for i = 1:n
        p = 1;
        for j = 1:n
            if i ~= j
                p = p * (t - x(j))/(x(i) - x(j));
            end
        end
        L = L + y(i)*p;
    end
    dL = diff(L, t);
    dy = double(subs(dL, xi));
end


