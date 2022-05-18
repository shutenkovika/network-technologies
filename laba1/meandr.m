N=8;
t=-1:0.01:1;
A=1;
T=1;
nh=(1:N)*2-1;
Am=2/pi ./ nh;
Am(2:2:end) = -Am(2:2:end);
harmonics=cos(2 * pi * nh' * t/T);
s1=harmonics.*repmat(Am',1,length(t))
s2=cumsum(s1);
for k=1:N
         subplot(4,2,k)
plot(t, s2(k,:)) 
end
print("meandr.png");