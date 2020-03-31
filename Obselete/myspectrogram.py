import matplotlib.pyplot as plt
import scitools.sound
import numpy




def cost(frequency, soundData):
    size = soundData.size


def frequencyAnalyzer(file, low, high, step, segmentSize=512):
    data = scitools.sound.read(file) # Reading from the file
    sampleFrequency = data[1]                   #Getting the bitrate (num samples per second)
    soundData = data[0].astype(float)                         # Isolating the sound data
    length = soundData.size                     # Getting the length of the data
    data = numpy.array(soundData.reshape(1, length))        #Turining it into a row vector

    testFreqencies = numpy.arange(low, step, high)      #frequencies to test
    


    for i in range(int(soundData.size // segmentSize)):


    