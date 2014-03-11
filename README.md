Stochastic InNovation
=======

A Random Walk through the sounds of Novation

This repository contains [ChucK language code](http://chuck.cs.princeton.edu/) that randomly mixes loops from the [Novation Heritage Synth Sample Pack](http://us.novationmusic.com/heritage). It is both an homage to the computational aspect of synthesis as well as an entry into the Novation Heritage competition.

To run the overall process, simply download the download the samples from Novation and unzip them in the same location as all the files in this repository. Run initialize.ck and you should start hearing loops from all the various instruments (Drum Station, Bass Station, etc.).

The instruments enter following the [Fibonacci series](https://en.wikipedia.org/wiki/Fibonacci_number) - that is, each instrument makes their first entrance according to it and also starts a new loop every certain number of bars based on the next number in it. The result is a very organic feel - musical phrases typically occur in multiples of 4 bars, so in comparison Fibonacci numbers seem haphazard and chaotic. However, there is still a pattern - it's just buried.

A summary of what each .ck file does:
- initialize.ck: loads the other files, runs the overall program
- score.ck: instantiates the instruments, orchestrates their instruments and manages overall time (starting/stopping)
- rec-auto-stereo-ck: records playback to a .wav file for later listening/uploading
- BPM.ck: provides a convenient mechanism for tracking BPM of various note values (underutilized at the moment but still handy)
- looper.ck: main class file encapsulating the functionality of loading an array of samples and playing one randomly
- every other (instrument.ck) file: an extension of looper.ck that loads the specific .wav samples for their respective instruments

Two other notes - one is that the various instrument.ck files have some of the samples commented out. I chose to do this as to try to strike a balance between the randomness and crunchy dissonance of overlapping disparate samples. The files only list samples at 130 BPM, and generally I commented out samples that stood out too much relative to the other instruments (certainly standing out is the point of music sometimes, but so is balance).

And the last note is that, in the name of predictability, I chose a specific random seed for the run that I uploaded to SoundCloud and submitted to the competition. Specifically I chose the seed 1992, in honor of the year that Novation began. [Visit SoundCloud](https://soundcloud.com/jazzaria/stochastic-innovation) to hear that particular run of this code.

With that, thanks for reading, and I hope you enjoy listening and possibly producing your own random remix of Novation samples!
