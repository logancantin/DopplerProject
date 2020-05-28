%Performs a short time fourier transform. Results are then used to display the frequency with the
%Greatest magnitude at each sample

%NOTE: Manual adjustment required. Scroll down to the comment that says `%ATTENTION:` to find the parameter 

%Sound data is a vector of raw sound data points, n is the window size, Fs is the sampling frequency,
%frequency is the frequency emitted by the source, and speed is the speed of the source in m/s
function shortTimeFourier(soundData, n, Fs, frequency, speed)

    % Generating the matrix of indices
    segmentStartPointsIndices = [1:n:length(soundData) - n];
    segmentRadixIndices = [0:n-1];
    segmentedSoundDataIndices = segmentStartPointsIndices' + segmentRadixIndices;
    
    % Putting the data into the matrix (row = one segment, the further down you go
    % the further forward in time it is)
    segments = soundData(segmentedSoundDataIndices);
    
    % Calculating the FFT of the segments (row)
    segments_fft = fft(segments, n, 2);
    
    % Calculating magnitude (row is one segment)
    % Column --> Frequency, Rows-> time
    segments_magnitude = sqrt(real(segments_fft) .^ 2 + imag(segments_fft) .^ 2);
    
    % Generating associated frequencies
    fundamental = Fs / n;
    frequencies = [0:fundamental:Fs](1:n);
    
    % Generating associated times
    times = segmentStartPointsIndices / Fs;

    % Calculating Nyquist
    nyquist = Fs / 2;

    % Interpolated time
    frequencies_interp = [1:nyquist];
    times_interp = [1:n];

    % Interpolated spectrogram data
    segments_magnitude_interpolated = interp1(frequencies, segments_magnitude', frequencies_interp, 'cubic')';

    %Getting the max frequency at each time sample
    [_, max_frequency_interp] = max(segments_magnitude_interpolated, [], 2);

    %Plotting the frequency with the greatest magnitude for each sample
    %ATTENTION: Change the shift variable to shift the values so that the passing of the car lines up with 0s
    shift = 0
    plot(times - shift, frequencies_interp(max_frequency_interp), 'rx', 3)

    hold on;

    %Plotting the theoretical frequency curve, 2.5 seconds before and after the car passes
    t2 = [-2.5 : 1 / Fs : 2.5];
    plot(t2, perceivedFrequency(frequency, speed, 2, t2));

    hold off;

    %Labelling the axes
    xlabel("Time (s)")
    ylabel("Frequency (Hz)")

    

endfunction