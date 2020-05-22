# The Doppler Effect: An In-Depth Explanation and Analysis
This is an independant project for my Physics class. The goal of this project is to:
- Give a fundamental understanding of the Doppler effect;
- Build a more complex formula to accurately model the sound of a passing car;
- Learn about the properties of complex waves and the Fourier Transform;
- Verify our hypothesis using Octave/Matlab;
- Explore the practical implications of the Doppler effect as it applies to flight at near supersonic speeds; and
- Make deep connections to other physical phenomena.

## Purpose
At its core, the purpose of this project is to assuage the curiosity I had about the Doppler effect, in particular the signature 'zoom' noise that cars make when they pass. This also happened to be an excellent opportunity to put some of my technical skills to the test. My hope is that, by publishing my research and resources, that my peers and anyone else who is interested can learn about the Doppler effect and its implications, and that they can also learn how to use the other technical tools that I used to make this project, such as the Fourier Transform, Octave/Matlab, and LaTeX.

## Lab Report
All of the information gathered through this project has been compiled into a lab report. I chose to do this to organize my information in a structured and easy to read document. The main Lab Report will allow you to replicate this experiment at home if you want. Regardless, the information it contains will give you a thorough understanding of the Doppler effect and why a passing car sounds the way it does. In addition, the Analysis section takes the new tools that we derived for the car and extrapolate to make connections to supersonic travel, sonic booms, and more. More detailed information and the steps I used to derive the model are available in the Appendices. The report is available [here](Report/doppler.pdf).

## Files
The sound files which I recorded and used for my analysis are available [here](SoundData/) for your use, should you wish to try the analysis yourself but you don't have the means to actuall carry out the experiment. In addition, all of the full resolution graps of my results are available [here](Images/), as well as amalgamated versions. *Note: The naming scheme works as follows: xx-yyy.(png|wav), where xx represents the speed of the vehicle in km/h and yyy represents the frequency, in Hz.*

## Tools
I have also included the scripts for you to be able to run the analysis scripts yourself. Please note that this is not for beginners, and I recommend that you only attempt this if you are an experienced programmer and are familiar with Octave/Matlab. Instructions for running the script are located in [frequencyAnalyzer.m](scripts/frequencyAnalyzer.m). **Note: the script is not very user-friendly right now. Please be patient as I adapt it for public use.**

## Additional Resources
Here is a list of links to the resources and tools I used in order to create this project:

### Fourier Transform
The Fourier Transform breaks up a complex periodic signal into all of the different sine waves that make it up. This technique is used by the spectrogram in order to visually analyze audio files.
- [But what is the Fourier Transform? A visual introduction.](https://www.youtube.com/watch?v=spUNpyF58BY)
- [Circles, Sines, and Signals: A Compact Primer on Digital Signals Processing](https://jackschaedler.github.io/circles-sines-signals/)
- [Spectrograms: An Introduction](https://www.youtube.com/watch?v=_FatxGN3vAM) *Only watch until 1 minute.*
- [SPECTROGRAM: Chrome Music Lab's online spectrogram](https://musiclab.chromeexperiments.com/Spectrogram/)

### Octave
A free and open source scientific programming language.
- [GNU Octave: Scientific Programming Language](https://www.gnu.org/software/octave/)
- [Octave-Online: Online Octave Interpreter](https://octave-online.net/)
- [Learn Matlab(Octave) in y minutes](https://learnxinyminutes.com/docs/matlab/)

### LaTeX
A mathematical typesetting language.
- [LaTeX: A document preparation system](https://www.latex-project.org/)
- [TeXmaker: A free, open source, and cross platform LaTeX editor](https://www.xm1math.net/texmaker/)
- [LaTeX-Tutorial.com: Beautiful typesetting made simple.](https://www.latex-tutorial.com/tutorials/sections/)
