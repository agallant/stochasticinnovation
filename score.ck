/*
 * Novation Heritage Competition, 2014
 * Score file that manages overall parameters and entry of voices/effects
 */

Math.srandom(1992);  // Random seed based on the year Novation started

// Song parameters
now => time start;  // To keep track of when we began playing
BPM t;  // Instantiate BPM object
t.tempo(130);  // set tempo in BPM - going with 130 due to sample availability
4 * t.quarterNote => dur bar;  // 4/4 time, so a bar has 4 quarter notes

// Initialize the voices
DrumStation drumStation;
BassStation bassStation;
BassStation2 bassStation2;
KStation kStation;
SuperNova2 superNova2;
UltraNova ultraNova;

// Set to record
Machine.add(me.dir() + "/rec-auto-stereo.ck") => int recID;

// MAIN SONG LOOP - use the Fibonacci series to decide entry of voices
// Set up a ~3-minute loop for the song, 104 bars is just over 3 minutes
for (0 => int barNum; barNum < 72; barNum++) {
    // Drum Station enters based on numbers 1 and 2
    if (barNum % 2 == 1) {
        spork ~ drumStation.playSample();
    }
    
    // Bass Station enters based on numbers 2 and 3
    if (barNum % 3 == 2) {
        spork ~ bassStation.playSample();
    }
    
    // Bass Station II enters based on numbers 3 and 5
    if (barNum % 5 == 3) {
        spork ~ bassStation2.playSample();
    }
    
    // K-Station enters based on numbers 5 and 8
    if (barNum % 8 == 5) {
        spork ~ kStation.playSample();
    }
    
    // SuperNova II enters based on numbers 8 and 13
    if (barNum % 13 == 8) {
        spork ~ superNova2.playSample();
    }
    
    // UltraNova enters based on numbers 13 and 21
    if (barNum % 21 == 13) {
        spork ~ ultraNova.playSample();
    }
    
    if (barNum >= 64) {
        // Last eight bars, lets fade-out at sixteenth-note granularity
        for (0 => int i; i < 16; i++) {
            dac.gain() * 0.95 => dac.gain;
            t.sixteenthNote => now;
        }
    } else {
        bar => now;  // Allow a bar (4 quarter notes) to pass
    }
}

1.0 => dac.gain;  // Reset dac.gain to 1 to be nice for further runs/other shreds

<<< "Done! Played for", (now - start) / second, "seconds" >>>;

// Stop recording
Machine.remove(recID);
