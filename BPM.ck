/*
 * Novation Heritage Competition, 2014
 * BPM class that gives correctly sized beats for a given BPM to all instruments
 */

public class BPM
{
    // global variables
    dur myDuration[4];
    static dur quarterNote, eighthNote, sixteenthNote, thirtysecondNote;
    
    fun void tempo(float beat)  {
        // beat is BPM, example 120 beats per minute
        
        60.0/(beat) => float SPB; // seconds per beat
        SPB :: second => quarterNote;
        quarterNote*0.5 => eighthNote;
        eighthNote*0.5 => sixteenthNote;
        sixteenthNote*0.5 => thirtysecondNote;
        
        // store data in array
        [quarterNote, eighthNote, sixteenthNote, thirtysecondNote] @=> myDuration;
    }
}

