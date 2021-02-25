from scipy.fft import rfft, rfftfreq 
from scipy.io.wavfile import read as wavread
from matplotlib import pyplot as plt
import numpy as np

def get_test_tone():
    sample_rate = 44100
    duration = 5
    tones = [(400, 1), (4000, 0.3)]
    def generate_sine_wave(freq):
        x = np.linspace(0, duration, sample_rate * duration, endpoint=False)
        frequencies = x * freq
        y = np.sin((2 * np.pi) * frequencies)
        return y
    res = np.array([0.0] * sample_rate * duration)
    for tone in tones:
        res += tone[1] * generate_sine_wave(tone[0])
    return res, sample_rate

def get_file_tone():
    file = "chicken-2.wav"
    a = wavread(file)
    return np.array(a[1],dtype=float), a[0]

rawtone, sample_rate = get_file_tone()
tone = np.int16((rawtone / rawtone.max()) * 32767)
print("Length: %i" % len(tone))
print("Sample rate: %iHz" % sample_rate)
print("Duration: %is" % (len(tone)/sample_rate))

yf = rfft(tone)
xf = rfftfreq(len(tone), 1 / sample_rate)

plt.plot(xf, np.abs(yf))
plt.show()
