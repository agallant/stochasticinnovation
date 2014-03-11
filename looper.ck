/*
 * Novation Heritage Competition, 2014
 * Looper class for general loading/playing of loops
 */

public class Looper
{
    // global variables
    me.dir() + "/Novation Heritage Soundpack novationmusic.com" => string basePath;
    SndBuf samples[];
    
    // Set up the sound chain, w/moderated gain, slight reverb, and randomized panning
    Gain g =>  Pan2 p => JCRev r => dac;
    0.30 => g.gain;
    0.005 => r.mix;
    //Math.random2f(0.0025, 0.075) => r.mix;
    Math.random2f(-1.0, 1.0) => p.pan;    

    // Load the passed in samples and set them all silent at start
    fun void loadSamples(string instrument, string files[])  {
        SndBuf loading[files.cap()];
        for (0 => int i; i < files.cap(); i++) {
            //<<< basePath + "/" + instrument + "/" + files[i] >>>;
            basePath + "/" + instrument + "/Loops/" + files[i] => loading[i].read;
            loading[i].samples() => loading[i].pos;  // set at end to not play
            loading[i] => g;
        }
        loading @=> samples;  // Make the reference globally available
    }
    
    // Play a random sample
    fun void playSample() {
        Math.random2(0, samples.cap() - 1) => int sample;
        0 => samples[sample].pos;
        // Run for the duration of the sample
        while(samples[sample].pos() < samples[sample].samples()) {
            1::second => now;
        }
    }
}

