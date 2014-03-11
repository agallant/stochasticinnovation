/*
 * Novation Heritage Competition, 2014
 * Extension of Looper class w/130 BPM K-Station samples
 */

public class KStation extends Looper
{
    // Instrument (and subpath) name
    "K-Station" => string instrument;

    // Sample files to initialize looper
    [//"NOVHTG 130 A - K-Station - Acida.wav",
     "NOVHTG 130 A - K-Station - Coming Up.wav",
     //"NOVHTG 130 E - K-Station - Hands Up.wav",
     "NOVHTG 130 F - K-Station - Smoothy.wav"] @=> string files[];

    // Set up the Looper
    loadSamples(instrument, files);
}
