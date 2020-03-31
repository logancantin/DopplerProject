
figure(2);
%First segment
first = rsaudio(5000:5511);
first_fft = fft(first, 512);
first_magnitudes = sqrt(real(first_fft) .^ 2 + imag(first_fft) .^ 2);
first_fundamental = Fs / 512;
first_frequencies = [0:first_fundamental:Fs](1:512);
plot(first_frequencies(1:128), first_magnitudes(1:128))

figure(4);
%Second segment
second = rsaudio(38000:38511);
second_fft = fft(second);
second_magnitudes = sqrt(real(second_fft) .^ 2 + imag(second_fft) .^ 2);
second_fundamental = Fs / 512;
second_frequencies = [0:second_fundamental:Fs](1:512);
plot(second_frequencies(1:128), second_magnitudes(1:128))