pkg load signal;

%files = glob('SoundData/*.wav');
%for i=1:numel(files)
    %[~, name] = fileparts (files{i});
    %name

    %figure(i)
    % Takes the audio data from the wav file
    [audioData, Fs] = audioread("SoundData/60-900.wav");
    %['SoundData/' name  '.wav']);

    %Only taking the left channel
    audioData = audioData(:, 1);

    %Resampling down
    %Sampling frequency will be close to 6000Hz
    %Nyquist frequency will be around 3000
    rsaudio = resample(audioData, 1, 8);
    Fs = Fs / 8;

    shortTimeFourier(rsaudio, 256, Fs)
%endfor



waitfor(figure(1))