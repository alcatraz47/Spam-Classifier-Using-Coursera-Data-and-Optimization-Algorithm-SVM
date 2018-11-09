function sim = gaussianKernel(x1, x2, sigma)
x1 = x1(:); x2 = x2(:);

sim = 0;

a = norm(x1-x2);
a = a.^2;
sigma = sigma*sigma;
sigma = 2*sigma;
b = a/sigma;
sim = exp(-b);
% =============================================================
    
end
