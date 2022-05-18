mkdir 'signal';
mkdir 'spectre';
tmax = 0.5;
fd = 512;
f1 = 5;
f2 = 50;
fd2 = fd/2;
t = 0:1./fd:tmax;
signal1 = sin(2*pi*t*f1);
signal2 = sin(2*pi*t*f2);
signal = signal1 .* signal2;
 plot(signal, 'b');
hold on
plot(signal1, 'r');
plot(-signal1, 'r');
hold off
title('Signal');
print 'signal/am.png';
spectre = fft(signal,fd);
f = 1000*(0:fd2)./(2*fd);
spectre = 2*sqrt(spectre.*conj(spectre))./fd2;
plot(f,spectre(1:fd2+1), 'b')
xlim([0 100]);