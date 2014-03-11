/*
 * Novation Heritage Competition, 2014
 * Extension of Looper class w/130 BPM UltraNova samples
 */

public class UltraNova extends Looper
{
    // Instrument (and subpath) name
    "UltraNova" => string instrument;

    // Sample files to initialize looper
    [//"NOVHTG 130 - Ultranova - Angry Robot.wav",
     //"NOVHTG 130 A - Ultranova - Candy Kids.wav",
     //"NOVHTG 130 A - Ultranova - Happy Twat.wav",
     "NOVHTG 130 C - Ultranova - Big Fish.wav",
     "NOVHTG 130 C - Ultranova - Whispers.wav",
     //"NOVHTG 130 D - Ultranova - Anthem - Swept.wav",
     "NOVHTG 130 D - Ultranova - Anthem.wav",
     //"NOVHTG 130 D - Ultranova - Eurphoric Progression.wav",
     "NOVHTG 130 D - Ultranova - Shimmer.wav",
     "NOVHTG 130 F - Ultranova - Dark Star.wav"] @=> string files[];

    // Set up the Looper
    loadSamples(instrument, files);
}
