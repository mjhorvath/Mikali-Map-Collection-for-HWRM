ThoughtDump v1.3.0 by Thought, Mikail
Created: ?
Updated: 12/23/10
Homepage:
http://isometricland.com
http://hw2.tproc.org
Discussion:
http://forums.relicnews.com/showthread.php?19768
http://forums.relicnews.com/showthread.php?66996


================================================================================


INSTALLATION
Extract this archive into your "Homeworld2\Data\Scripts\" directory.

INTRODUCTION
Parses the globals table and prints its contents to "HW2.log". Can, however, be 
used to parse (e.g. pretty-print) any table in some cases.

INSTRUCTIONS
Use the "dofilepath()" function to read/call the script, or just copy its 
contents to another file. Output will be printed to "HW2.log".


================================================================================


CHANGE LOG

1.3.0
* Output is now sorted alphabetically.

1.2.3
* Reverted to prior version (v1.21), as the new code was buggy.

1.2.2
* The script now writes its output to a global string variable named "__Output", 
  which is later printed.

1.2.1
* All table indices are now printed.
* The tag numbers of userdata values are now printed in double-quotes after 
  their indices.

1.2.0
* Output is formatted differently, now.
* Added the "verbose" switch (enabled by default).

1.1.0
* I made it so that the script can be read/called externally (so long as the 
  globals() function is within its scope), instead of merely being a gamerule.
* Trimmed the code a bit.

1.0.0
* Original version released by Thought.
