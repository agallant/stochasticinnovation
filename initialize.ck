 /*
 * Novation Heritage Competition, 2014
 * Main file - run this w/other files and unzipped sounds in the same path
 * See README.md for more details
 */

<<< " __    _  _______  __   __  _______  _______  ___   _______  __    _  " >>>;
<<< "|  |  | ||       ||  | |  ||   _   ||       ||   | |       ||  |  | | " >>>;
<<< "|   |_| ||   _   ||  |_|  ||  |_|  ||_     _||   | |   _   ||   |_| | " >>>;
<<< "|       ||  | |  ||       ||       |  |   |  |   | |  | |  ||       | " >>>;
<<< "|  _    ||  |_|  ||       ||       |  |   |  |   | |  |_|  ||  _    | " >>>;
<<< "| | |   ||       | |     | |   _   |  |   |  |   | |       || | |   | " >>>;
<<< "|_|  |__||_______|  |___|  |__| |__|  |___|  |___| |_______||_|  |__| " >>>;
<<< " __   __  _______  ______    ___   _______  _______  _______  _______ " >>>;
<<< "|  | |  ||       ||    _ |  |   | |       ||   _   ||       ||       |" >>>;
<<< "|  |_|  ||    ___||   | ||  |   | |_     _||  |_|  ||    ___||    ___|" >>>;
<<< "|       ||   |___ |   |_||_ |   |   |   |  |       ||   | __ |   |___ " >>>;
<<< "|       ||    ___||    __  ||   |   |   |  |       ||   ||  ||    ___|" >>>;
<<< "|   _   ||   |___ |   |  | ||   |   |   |  |   _   ||   |_| ||   |___ " >>>;
<<< "|__| |__||_______||___|  |_||___|   |___|  |__| |__||_______||_______|" >>>;

// Load the BPM and Looper classes
Machine.add(me.dir() + "/BPM.ck");
Machine.add(me.dir() + "/looper.ck");

// Load the classes to represent the various Novation instruments
Machine.add(me.dir() + "/drum_station.ck");
Machine.add(me.dir() + "/bass_station.ck");
Machine.add(me.dir() + "/bass_station_II.ck");
Machine.add(me.dir() + "/k_station.ck");
Machine.add(me.dir() + "/supernova_II.ck");
Machine.add(me.dir() + "/ultranova.ck");

// Add score file, which will orchestrate the actual song
Machine.add(me.dir() + "/score.ck");
