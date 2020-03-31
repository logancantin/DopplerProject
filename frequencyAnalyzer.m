pkg load signal;

% Takes the audio data from the wav file
[audioData, Fs] = audioread("SoundData/60-300.wav");

%Only taking the left channel
audioData = audioData(:, 1);

%Resampling down
%Sampling frequency will be close to 6000Hz
%Nyquist frequency will be around 3000
rsaudio = resample(audioData, 1, 8);
Fs = Fs / 8;

shortTimeFourier(rsaudio, 2048, Fs)

%figure(3);
%Interpolated version
%f = [0:2:1440];
%yinterp = interp1(first_frequencies(1:128), first_magnitudes(1:128), f, "cubic");
%plot(f, yinterp)


waitfor(figure(1))