from scipy import signal
from scipy.fft import fftshift
from scipy.interpolate import interp1d
import matplotlib.pyplot as plt
import scitools.sound
import numpy

data = scitools.sound.read("30kmh 800hz.wav")
bitrate = data[1]
length = data[0].size
data = numpy.array(data[0].reshape(1, length))

f, t, Sxx = signal.spectrogram(data, bitrate, nperseg=256,)



print(f.shape, t.shape, Sxx.shape)
print(Sxx.transpose().shape)

'''
strongestFrequency = numpy.argmax(Sxx.transpose(), axis=1)
fs = f[strongestFrequency]

plt.plot(t, fs)
plt.show()

'''

print(Sxx.shape)

plt.pcolormesh(t, f, numpy.clip(Sxx[0], 1, 100))
plt.ylabel('Frequency [Hz]')
plt.xlabel('Time [sec]')

plt.show()
