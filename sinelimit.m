function y = sinelimit(c)
% learning about function in matlab
format short
b = 1:2:c;
x = 10.^(-b);
y = (sin(x)./x)';