x = 0.1:1/22:1; % input
y = (1 + 0.6*sin(2*pi*x/0.7)) + 0.3*sin(2*pi*x)/2;% output
q = 0.15;%Learning step
c1 = 0.19;
c2 = 0.9;
r1 = 0.19;
r2 = 0.19; % c1,c2,r1,r2 various numbers
w1 = randn(1);
w2 = randn(1);
w0 = randn(1);


for j=1:10000 % number of iterations
    for i = 1:20% count of cycles
        F1 = exp(-(x(i)-c1)^2/(2*r1^2));% gaussian function
        F2 = exp(-(x(i)-c2)^2/(2*r2^2));
        y1 = F1*w1+F2*w2+w0;
        e = y(i)-y1;
        w1 = w1+q*e*x(i);% renewing weights
        w2 = w2+q*e*x(i);
        w0 = w0+q*e*1;
    end
disp(e)
end


Y = zeros (20,1);
for i = 1:20
    F1 = exp(-(x(i)-c1)^2/(2*r1^2));
    F2 = exp(-(x(i)-c2)^2/(2*r2^2));
    y1 = F1*w1+F2*w2+w0;
    
    Y(i) = y1;
end
plot(x,y,'ko',x,Y,'r*')
    
        