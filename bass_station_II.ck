/*
 * Novation Heritage Competition, 2014
 * Extension of Looper class w/130 BPM Bass Station II samples
 */

public class BassStation2 extends Looper
{
    // Instrument (and subpath) name
    "Bass Station II" => string instrument;

    // Sample files to initialize looper
    [//"NOVHTG 130  - BassStation II - Ziplock.wav",
     //"NOVHTG 130 - BassStation II - Jackoff.wav",
     "NOVHTG 130 - BassStation II - Noisey Hats.wav",
     "NOVHTG 130  C - BassStation II - Steamroller.wav",
     "NOVHTG 130 A - BassStation II - Electro Double.wav",
     "NOVHTG 130 F - BassStation II - Rusty Kicker.wav",
     "NOVHTG 130 G - BassStation II - Analogue Ride.wav",
     "NOVHTG 130 G - BassStation II - Bass Tube.wav",
     "NOVHTG 130 G - BassStation II - Furry Leg Warmers.wav",
     "NOVHTG 130 G - BassStation II - Glosticks.wav",
     "NOVHTG 130 G - BassStation II - Heavy Kick.wav"] @=> string files[];

    // Set up the Looper
    loadSamples(instrument, files);
}
