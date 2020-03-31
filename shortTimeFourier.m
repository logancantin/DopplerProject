function shortTimeFourier(soundData, n, Fs)

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

    size(frequencies)
    size(segments_magnitude)

    % Interpolated spectrogram data
    segments_magnitude_interpolated = interp1(frequencies, segments_magnitude', frequencies_interp);

    imagesc(times, frequencies, segments_magnitude')
    set(gca, 'YDir', 'normal')

    figure(2)
    imagesc(times, frequencies, segments_magnitude')


    

endfunction