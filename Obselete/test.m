pkg load signal;

Fs = 6000;
t = [0:1/Fs:1];
s = sin(2 * pi * 300 * t);

shortTimeFourier(s, 512, Fs)

waitfor(figure(1))