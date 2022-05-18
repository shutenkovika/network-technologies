x=-10:0.1:10;
y1=sin(x)+1/3*sin(3*x)+1/5*sin(5*x);
plot(x,y1, "-ok; y1=sin(x)+(1/3)*sin(3*x)+(1/5)*sin(5*x);","markersize",4)
grid on;
xlabel('x');
ylabel('y');
title('y1=sin x+ (1/3)sin(3x)+(1/5)sin(5x)');
print ("plot-sin.eps", "-mono", "-FArial:16", "-deps")
print("plot-sin.png");
