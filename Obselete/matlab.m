Fs = 8000;
t = [0:1/Fs:1];
s = sin(2 * pi * 300 * t) + sin(2 * pi * 400 * t) + 0.5 * rand(1, 8001);

fundamental = Fs / 8001;
fftdata = fft(s);
magnitudes = sqrt(real(fftdata) .^ 2 + imag(fftdata) .^ 2);
size([0:fundamental:fundamental * 8000])
size(magnitudes)
plot([0:fundamental:fundamental * 8000], magnitudes)
figure 2
plot(t(1:200), s(1:200))
waitfor(figure(1))