/*
 * Novation Heritage Competition, 2014
 * Extension of Looper class w/130 BPM Drum Station samples
 */

public class DrumStation extends Looper
{
    // Instrument (and subpath) name
    "Drum Station" => string instrument;

    // Sample files to initialize looper
    ["NOVHTG 130 - DrumStation - 808 Plod - Cowbell.wav",
     "NOVHTG 130 - DrumStation - 808 Plod - Full.wav",
     "NOVHTG 130 - DrumStation - 808 Plod - Hats.wav",
     "NOVHTG 130 - DrumStation - 808 Plod - KikSnr.wav",
     "NOVHTG 130 - DrumStation - 808 Plod - Toms.wav",
     "NOVHTG 130 - DrumStation - Floorfiller - Full.wav",
     "NOVHTG 130 - DrumStation - Floorfiller - Kick.wav",
     "NOVHTG 130 - DrumStation - Floorfiller - Snare.wav",
     "NOVHTG 130 - DrumStation - Floorfiller - Tops.wav"] @=> string files[];

    // Set up the Looper
    loadSamples(instrument, files);
}
