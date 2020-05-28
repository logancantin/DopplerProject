%In order to use this program, open up an interactive octave command line and call this function.

%Performs a short time fourier analysis on the given file. Must be a .wav file
%Downsamples to 6000Hz. This script is only useful for analyzing frequencies under 3000Hz.

%Path is the path to the sound file, frequency is the frequency emitted by the source, speed is the speed in m/s
%NOTE: In order to get an accurate comparison, you must make a manual adjustment...
%Instructions in the shortTimeFourier.m file
function frequencyAnalyzer(path, frequency, speed)

    pkg load signal;

    % Takes the audio data from the wav file
    [audioData, Fs] = audioread(path);

    %Only taking the left channel
    audioData = audioData(:, 1);

    %Resampling down
    %Sampling frequency will be close to 6000Hz
    %Nyquist frequency will be around 3000
    rsaudio = resample(audioData, 1, 8);
    Fs = Fs / 8;

    %Performing the short time fourier transform
    shortTimeFourier(rsaudio, 256, Fs, frequency, speed)

    %Prevent the closing of the figure until the user is done looking at it
    waitfor(figure(1))
endfunction