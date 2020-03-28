import scitools.sound
import numpy as np
from matplotlib import pyplot as plt

data = scitools.sound.read("200.wav")
bitrate = data[1]
data = data[0].astype(float)

SAMPLE_SIZE = 200

data = data[:SAMPLE_SIZE]
time = np.arange(SAMPLE_SIZE)

def freq(x, f):
    return np.sin(x * (2 * np.pi / 200))

plt.plot(time, 21900 * freq(time, 200))
plt.plot(time, data)
# plt.plot(np.fft.rfftfreq(2*SAMPLE_SIZE - 1, d=1/44100), np.real(np.fft.rfft(data)))
plt.show()

