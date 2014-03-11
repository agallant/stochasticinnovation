/*
 * Novation Heritage Competition, 2014
 * Extension of Looper class w/130 BPM Bass Station samples
 */

public class BassStation extends Looper
{
    // Instrument (and subpath) name
    "Bass Station" => string instrument;

    // Sample files to initialize looper
    [//"NOVHTG 130 - BassStation I - Brain Drain.wav",
     //"NOVHTG 130 - BassStation I - Cheese Alarm.wav",
     //"NOVHTG 130 - BassStation I - Drunk Cat.wav",
     "NOVHTG 130 - BassStation I - Sub Zero.wav",
     "NOVHTG 130 A - BassStation I - Walker 2.wav",
     "NOVHTG 130 A - BassStation I - Walker.wav"] @=> string files[];
     //"NOVHTG 130 G - BassStation I - Crazy Saws.wav"] @=> string files[];

    // Set up the Looper
    loadSamples(instrument, files);
}
