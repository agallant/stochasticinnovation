/*
 * Novation Heritage Competition, 2014
 * Extension of Looper class w/130 BPM SuperNova 2 samples
 */

public class SuperNova2 extends Looper
{
    // Instrument (and subpath) name
    "SuperNova II" => string instrument;

    // Sample files to initialize looper
    ["NOVHTG 130 - Supernova II - Crunchy.wav",
     "NOVHTG 130 - Supernova II - Invasion.wav",
     "NOVHTG 130 A - Supernova II - Classic TechChord.wav",
     "NOVHTG 130 A - Supernova II - Plinky.wav",
     "NOVHTG 130 A - Supernova II - Techno Bells.wav",
     "NOVHTG 130 A - Supernova II - Tension Hi.wav",
     "NOVHTG 130 A - Supernova II - Tension Lo.wav",
     "NOVHTG 130 A - Supernova II - Tension.wav",
     "NOVHTG 130 C - Supernova II - Trance Arm.wav",
     "NOVHTG 130 F - Supernova II - Brogressive.wav",
     "NOVHTG 130 G - Supernova II - Charlie Says.wav",
     "NOVHTG 130 G - Supernova II - Fat Funker.wav",
     "NOVHTG 130 G - Supernova II - Hau5 Bass.wav",
     "NOVHTG 130 G - Supernova II - Heavy Industry.wav",
     "NOVHTG 130 G - Supernova II - Push It.wav",
     "NOVHTG 130 G# - Supernova II - Rave Dave.wav"] @=> string files[];

    // Set up the Looper
    loadSamples(instrument, files);
}
