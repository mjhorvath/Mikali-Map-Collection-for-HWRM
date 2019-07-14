Map Collection v1.18.1 by Mikali
Created: 2004/11/14
Updated: 2015/02/26
Homepage: http://isometricland.net
Discussion: http://forums.relicnews.com/showthread.php?t=48818


================================================================================


DESCRIPTION

A collection of multiplayer maps, as well as demonstrations of my map-making 
functions.


INSTALLATION

Extract the contents of this archive into your 
"Homeworld2\Data\leveldata\multiplayer\deathmatch" directory. You must have 
also installed the Homeworld 2 v1.1 patch in order for these maps to work.


================================================================================


CONTENTS

(2P) RESOURCE GALLERY
This map is intended to be used as a guide for map-makers. Arranged in rows and 
columns are natural terrain, such as asteroids and clouds.

(2P) SHIP GALLERY
This map is intended to be used as a guide for map-makers. Arranged in rows and 
columns are ships present in the game.

(2P) THE SQUASH
A 1v1 map in the shape of a self-intersecting torus.

(2P) TUTORIAL MISSION NO.3
Mission one from the HW2 tutorial converted into a 1v1 map.

(2P) VEIL OF FIRE
Mission seven from the HW2 single player campaign converted into a 1v1 map.

(4P) SCALAR FIELD
A heightmap based on the function for an electromagnetic field. Teams are top 
vs. bottom.

(4P) METABALL MADNESS
A 4-player map created using the metaball function. Teams are top vs. bottom.

(4P) PLASMA GLOBE
A 4-player map in the shape of a plasma globe using the "branchAdd" function. 
Teams are top vs. bottom.

(4P) SPIRAL GALAXY
A 4-player map shaped like a spiral with a radioactive cloud in the middle. 
Teams are top vs. bottom.

(4P) THE SQUID
A 4-player map shaped like a spiral. Teams are top vs. bottom.

(4P) STRANGE ATTRACTOR
A 4-player map. Teams are top vs. bottom.

(4P) TORA! TORA! TORA!
A 4-player map shaped like a torus. Teams are top vs. bottom.

(5P) ELECTROMAGNETIC DOILY
A 5-player map with a kaleidoscopic bubble and swirl pattern kind of like a 
doily. Teams are FFA.

(5P) RHEOTOMIC SPACES
A 5-player map created using Daniel Piker's Rheotomic Surfaces tool as a guide. 
Teams are FFA.

(6P) ANDROMEDA
A very large 6-player map in the shape of a double-armed spiral. Teams are top 
vs. bottom.

(6P) BENTUS MELTDOWN
A large random 6-player map in the shape of concentric elliptical rings. Teams 
are odds vs. evens. Radioactive wreckage lie at the map's center.

(6P) CHICKEN SCRATCH
Random scattered lines and branches. Teams are random.

(6P) CURVE STITCH
A map demonstrating the curve stitch function. Teams are top vs. bottom.

(6P) GEHENNA
Mission five from the HW2 single player campaign, converted into a six person 
map. Teams are top vs. bottom.

(6P) HARMONOGRAPH
A 6-player map featuring a squiggly curving tube similar to the shape produced 
by a harmonograph, except in three dimensions. Teams are top vs. bottom.

(6P) HAVE A BALL
A large 6-player map shaped like a globe. Teams are odds vs. evens.

(6P) KLEIN BOTTLE
A 6-player map in the shape of a Klein Bottle. Teams are top vs. bottom.

(6P) SPLINE CRAZY
A 6-player map consisting of a giant twisting loop. Teams are odds vs. evens. 


================================================================================


CREDITS

• MathWorld and Wikipedia for the parametric surface functions used in 
  "shapeAdd", "harmonographAdd" and probably elsewhere.
• GameDev.net for the implicit metaball formula used in "blobAdd".
• The function "flokalAdd" is based on 'doodle 4' by bitcraft at 
  OpenProcessing.org.
• The people at Stack Exchange Mathematics for a lot of additional help.
• Lorenzo Donati at Stack Overflow for the new pseudo random number generator.
• Daniel Piker for his Rheotomic Surfaces tool for Rhino3D and Grasshopper.
• The developers of Rhino3D and Grasshopper.


================================================================================


CHANGE LOG

1.18.1
• Appended "MapFunctions.lua" to the end of each level so they can be safely 
  shared/loaded with people who don't already have the maps installed.

1.18.0
• Created "6p_Voronoi_Steppes.level" using Rhino3D and Grasshopper. I've 
  included the Grasshopper script along with the map.
• Updated "6p_Harmonograph.level" due to changed syntax of the 
  "harmonographAdd" function.

1.17.0
• Renamed "4p_Torascope.level" back to "Tora! Tora! Tora!".
• Created "5p_Rheotomic_Spaces.level" using Daniel Piker's Rheotomic 
  Surfaces tool for Rhino3D and Grasshopper as a guide.
• Fixed a bug in the "harmonographAdd" function. The shapes produced by 
  "6p_Harmonograph.level" should be a lot prettier now.
• There were still some instances of the default Lua "random" function being 
  used in "4p_Spiral_Galaxy.level". Replaced those with calls to "srandom".
• There are now two new experimental maps - "4p_heightmapAdd.level" and 
  "4p_blobAdd2.level" - named after the two functions they were meant to test. 
  Don't expect the gameplay to be any fun on these maps, however.

1.16.1
• The random background and music functions now take a seed value as per the 
  other random functions. All the maps needed to be updated.
• Increased the number of players in "4p_Spline_Crazy.level" from 4 to 6 and is 
  now called "6p_Spline_Crazy.level".
• Tweaks to "6p_Spline_Crazy.level". Positions are now top vs. bottom instead 
  of random, and the y-axis has been shortened by one third.
• Put all objects in "6p_Andromeda.level" on the same rotated plane, including 
  the player starting positions.
• Reduced the number of resource patches in the innermost ring of 
  "6p_Andromeda.level" from 6 to 3.
• Level names now appear light-blue in the level selection menu during skirmish 
  setup. (Thanks Stargazer!)
• Tweaks to level thumbnails. The thumbnails now show dice if the map a random 
  one, a Relic Entertainment logo if the map is from the default singleplayer 
  game, and a radiation symbol if the map has a radioactive area in the middle.
• Renamed "4p_Field_Strength.level" to "4p_Scalar_Field.level".

1.16.0
• Created "4p_Field_Strength.level".
• Tweaks to "4p_Metaball_Madness.level".
• Tweaks to "4p_Spline_Crazy.level".

1.15.0
• Add more asteroids to "2p_The_Squash.level" and made the map symmetrical.
• Removed "6p_The_Back_Alley.level". It was not a good map.
• Tweaked "4p_Metaball_Madness.level". I changed the seed for the PRNG. The map 
  looks vastly different as a result.
• Tweaked "6p_Have_a_Ball.level". I added a few more lines of latitude so the 
  sphere looks a more defined. The effect is only cosmetic, however.
• Recreated all the level thumbnails at a higher resolution. They should appear 
  more crisp in the level selection menu now.
• The "easyPatch" function now generates one additional asteroid.
• Fixed the flattened branches of "4p_Plasma_Globe.level".
• Fixed the very center of "4p_Plasma_Globe.level" which had overlapping re-
  sources.
• Created "4p_Spline_Crazy.level".

1.14.0
• Created "4p_Plasma_Globe.level".
• Created "6p_Chicken_Scratch.level".

1.13.0
• Fixed "4p_Metaball_Madness.level" having too few resources. The "blobAdd" 
  function also now accepts distribution tables as per most of the other 
  functions.
• Tweaks to "4p_The_Squid.level". There are now slightly more asteroids, and 
  the arms now have identically placed resources. The large asteroids at each 
  spawn point have been removed, however.
• Implemented yet another pseudo random number generator, requiring small 
  changes to all the maps. (Though sometimes changes that produced widely 
  differing shapes.)

1.12.0
• Tweaks to "6p_Bentus_Meltdown.level". I modified the "ringAdd" function to 
  place the elliptical rings around one of their foci. This adds a bit of asym-
  metry to the map.
• Tweaks to "6p_Harmonograph.level". Added more asteroids, and distributed them 
  randomly throughout the curve. (The map was like this originally.)
• Tweaks to the random number seeds of all maps. The seed number should always 
  be below 65536 or it will negatively affect the random distribution, accor-
  ding to http://love2d.org/forums/viewtopic.php?p=134477#p134477.
• Tweaks to "5p_Electromagnetic_Doily.level". There is now radioactive debris 
  in the center of the map.
• The map thumbnails now tell you whether positions are top vs. bottom, odds 
  vs. evens, random, etc.

1.11.0
• Tweaks to "4p_Metaball_Madness.level".
• Renamed "4p_Death_Spiral.level" back to "4p_Spiral_Galaxy.level", its 
  original name.
• Added extra resources to "4p_Spiral_Galaxy.level".
• Updates to all level files to comply with the new pseudo random number 
  generator.
• Removed "4p_Twisted.level" from the collection since "6p_Harmonograph.level" 
  was added and is so similar.
• Removed "6p_Bentus_Random.level" from the collection because I felt it was 
  redundant.
• Fixed a bug in "6p_Gehenna.level" that caused some dustclouds to not appear.
• Fixed a bug in the "globeAdd" function that was causing the bottom ring in 
  "6p_Have_a_Ball.level" to not appear.
• Converted the thumbnail images from ROT back to TGA. TGA is easier to edit.

1.10.0
• Created "6p_Curve_Stitch.level".
• Tweaks to "5p_Electromagnetic_Doily.level".

1.9.0
• Created "5p_Electromagnetic_Doily.level".

1.8.0
• Created "4p_Strange_Attractor.level".
• Small tweaks to "6p_Harmonograph.level".
• Increased the number of resources in "4p_Metaball_Madness.level".

1.7.1
• Small bug in harmonograph code. Updated "6p_Harmonograph.level".

1.7.0
• Created "6p_Harmonograph.level".

1.6.0.
• Created "4p_Metaball_Madness.level".

1.5.0
• Updated all maps to use the current map function syntax.
• The custom map functions and map collection are now distributed together
  instead separately.
• The maps all transclude "MapFunctions.lua" now, so they will no longer 
  function in multiplayer if the other player hasn't also installed the map 
  functions.

1.4.3
• Created "4p_Twisted_Knot.level".
• Levels are no longer compiled.

1.4.2
• Fixed some buggy clouds and dust clouds in (6P) Gehenna.

1.4.1
• Removed the fix from the previous version that caused all "player" tables to 
  be indexed starting with the number 1. Now all "player" tables are indexed 
  starting with the number 0 (the original behavior).

1.4.0
• Fixed the bug where only half the correct number of start positions were 
  being created in (6P) Bentus Meltdown.
• Fixed the bug in those maps where the "player" table was not indexed starting 
  with the number 1.

1.3.9
• Added more RUs to (6P) Klein Bottle.
• Recompiled the maps -- this time without using the "-s" switch.
  This means that they can be decompiled again using LuaDC.

1.3.8
• Added (6P) Klein Bottle.
• Removed (6P) Tora! Tora! Tora!.

1.3.7
• Fixed the bug in (4P) The Squid where the second set of resources weren't 
  appearing.
• Fixed the bug in (6P) Have a Ball where too many RUs were placed at the poles.

1.3.6
• Changed (4P) Tora! Tora! Tora! back to the way it was originally.
• Changed the "Meg_Asteroid"s in (6P) Andromeda to "Meg_AsteroidMP".
• Reduced the number of RUs in (4P) The Squid by half.
• Replaced the two center resource patches in (6P) Have a Ball with a single 
  patch.

1.3.5
• Added (2P) Ship Gallery.
• Added (2P) Tutorial Mission No.1.
• Added (2P) The Squash.

1.3.4
• (6P) Have a Ball has been reduced in size and RU amount.

1.3.3
• Added (4P) The Squid.

1.3.2
• Added additional dust clouds and resources to (4P) Tora! Tora! Tora!.
• (6P) Back Alley reverted to a previous version since changes were lost in an 
  accident...
• Reduced the file sizes of (6P) Gehenna and (2P) Veil of Fire by placing all 
  objects in tables (though this has no effect once compiled).

1.3.1
• Start positions in (4P) Tora! Tora! Tora! are a little closer to each other 
  now.
• Asteroids now all start out with 100% RU value in (6P) Back Alley.

1.3.0
• All level files have been compiled for improved performance and smaller 
  filesize.

1.2.0
• Had to fix all the maps so that they no longer load "MapFunctions.lua", as 
  this was causing sync errors. The code has been copied directly into each 
  level file, instead.
• Removed "MapFunctions.lua" from the archive, as it is no longer needed.
• Added (6P) Tora! Tora! Tora! 1.0 to the collection.

1.1.1
• Slight change to '6P Andromeda'.

1.1.0
• Converted the .TGA map thumbnails to .DDS and then .ROT to reduce filesize.

1.0.0
• Initial release.


================================================================================


KNOWN ISSUES/NOTES

• "6p_Andromeda.level" used to have a few hyperspace gates for each player, as 
  well as some of the large megalith asteroids with hyperspace inhibitors and 
  defense fields. Problems with this approach:
  1) hyperspace gates can only be used by Vaygr regardless of in whose 
     possession they are
  2) the large asteroids are considered build capable, and cannot be destroyed 
     - only captured - causing the game to never end while it waits for all 
     build capable ships to be eliminated
  Fixing this would require modding of the ship files, which I want to avoid.
• I'm tempted to place some salvage debris in the center area of the map, but 
  that would be somewhat unfair. Alternately, I could place some radiation 
  clouds in the center. But there are enough maps like that already.
