Caption:	Mikali's Multiplayer Map Collection
Version:	1.27.1
Authors:	Mikali
Created:	2004/11/14
Updated:	2020/08/02
License:	Attribution 4.0 International (CC BY 4.0)
Website:	http://isometricland.net/homeworld/homeworld.php
GitHub:		https://github.com/mjhorvath/Mikali-Maps-for-Homeworld-Remastered
ModDB:		http://www.moddb.com/mods/mikalis-multiplayer-map-collection
Steam:		http://steamcommunity.com/sharedfiles/filedetails/?id=399477672
Discussion:	http://forums.relicnews.com/showthread.php?t=48818


================================================================================


DESCRIPTION

A collection of multiplayer maps demonstrating my custom map-making functions. 
These maps will only work with Homeworld Remastered.

The very latest uncompressed version of the mod can always be found on GitHub.


INSTALLATION

If you have the Steam version of the game, installation is done by subscribing 
to the mod on the Steam Workshop page, and then using the "Mods" section of the 
game launcher to select which mods you want to activate.

For the GOG.com version of the game--or if you want to view and modify the 
mods's source code--you must download the mod from GitHub, then copy the 
"DataMikaliMaps" folder to your "Homeworld Remastered" or "HomeworldRM" 
directory. Next, you must add the text "-moddatapath DataMikaliMaps 
-overrideBigFile -luatrace" to the "Target" field of the game's desktop 
shortcut in order to get the mod working.

If you are not using the game launcher and are trying to load more than one mod 
at the same time, simply append or prepend the name of each mod's data folder 
after the "-moddatapath" command line parameter. For instance: "-moddatapath 
DataPlayersPatch,DataMikaliMaps,DataTestMod". Multiple names should be 
separated by a comma.

Note that the PlayersPatch is listed before my mod, and the Test mod is listed 
after it. The order in which mods are listed matters, and mods that are listed 
to the right in the list override the data belonging to mods that are listed to 
the left. Exactly which mod should appear first, and which mods should appear 
afterward, varies from mod to mod.


================================================================================


CONTENTS

Maps marked with a single asterisk (*) are not multiplayer safe. They will 
cause desyncs in human vs human multiplayer battles. They work fine in skirmish 
however. These maps are also marked with a pair of dice in the level thumbnail 
images. Maps marked with two asterisks (**) feature radioactive clouds (usually 
in the center of the map) that can destroy your ships if you fly into them. 
These maps are marked with a yellow triangle in the level thumbnail images.

(2P) BLOCK MAZE *
A 3D cube with randomized internal walls. Navigate the passageways to assault 
your foe.

(2P) GO AROUND
A two-player map with a large vertical barrier separating players.

(2P) RESOURCE GALLERY **
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

(3P) HEX MAZE SMALL *
A maze-like honeycomb of randomized megalith walls. Hunt for resources, but 
don't leave your collectors in a room undefended!

(4P) FLAT MAZE *
A 2D maze of passageways. Try and sneak around the outside as well. Teams are 
top vs. bottom.

(4P) METABALL MADNESS *
A 4-player map created using the blob and metaball functions. Teams are random.

(4P) PLASMA GLOBE *
A 4-player map in the shape of a plasma globe using the "branchAdd" function. 
Teams are top vs. bottom.

(4P) SCALAR FIELD
A heightmap based on the function for an electromagnetic field. Teams are top 
vs. bottom.

(4P) SPIRAL GALAXY **
A 4-player map shaped like a spiral with a radioactive cloud in the middle. 
Teams are top vs. bottom.

(4P) THE SQUID
A 4-player map shaped like a spiral. Teams are top vs. bottom.

(4P) STRANGE ATTRACTOR
A 4-player map. Teams are top vs. bottom.

(4P) TORA! TORA! TORA!
A 4-player map shaped like a torus. Teams are top vs. bottom.

(5P) ELECTROMAGNETIC DOILY **
A 5-player map with a kaleidoscopic bubble and swirl pattern kind of like a 
doily. Teams are FFA.

(5P) RHEOTOMIC SPACES
A 5-player map created using Daniel Piker's Rheotomic Surfaces tool as a guide. 
Teams are FFA.

(6P) CURVE STITCH
A map demonstrating the curve stitch function. Teams are top vs. bottom.

(6P) GEHENNA
Mission five from the HW2 single player campaign, converted into a six person 
map. Teams are top vs. bottom.

(6P) HARMONOGRAPH *
A 6-player map featuring a squiggly curving tube similar to the shape produced 
by a harmonograph, except in three dimensions. Teams are top vs. bottom.

(6P) HAVE A BALL
A large 6-player map shaped like a globe. Teams are odds vs. evens.

(6P) HEX MAZE BIG *
Like the three-player map, but bigger. Teams are top vs. bottom.

(6P) KLEIN BOTTLE
A 6-player map in the shape of a Klein Bottle. Teams are top vs. bottom.

(6P) MENGER SPONGE
A stack of blocks with nooks and crannies. Teams are odds vs. evens.

(6P) METABALLS II *
A 6-player map created using the blob and metaball functions. Teams are random.

(6p) VORONOI STEPPES
A 6-player map that looks like broken tiles.

(8P) ANDROMEDA
A very large 6-player map in the shape of a double-armed spiral. Teams are top 
vs. bottom.

(8P) BENTUS MELTDOWN * **
A large random 6-player map in the shape of concentric elliptical rings. Teams 
are random. Radioactive wreckage lie at the map's center.

(8P) CHICKEN SCRATCH *
Random scattered lines and branches. Teams are random.

(8P) GREEK CROSS FRACTAL
Resources are scarce, so you're going to have to cross to the other side to get 
more. Teams are top vs. bottom.

(8P) SPLINE CRAZY *
A 6-player map consisting of a giant twisting loop. Teams are random. 


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
• The POV-Ray team. I copied their naming scheme for most of the utility vector 
  functions.
• Dan Rollins for his HexMaze script on Experts Exchange.
• Jon Mark Perry at Stack Exchange for his help with the hexagon maps.
• Crufty for his help with JavaScript.
• Pouk, for giving me the idea for the hexagon maps in the first place.
• LuaBit v0.4 - http://luaforge.net/projects/bit/
• EatThePath for helping me get the mod working with GearBox's HWRM update.
• Thanks to sastrei for helping me with the new HOD format.


================================================================================


CHANGE LOG

1.27.1 - 2020/08/02
• Tweaks to tags and filters to make the maps more compatible with other mods.

1.27.0 - 2020/08/01
• Tweaked the "Metaball Madness" and "Metaballs II" maps.
• Renamed custom asteroids, clouds, etc. so as not to conflict with the default 
  vanilla objects or objects created for other mods.
• Updated crystal HODs to 2.0-patch format.
• Updated "2p_Gallery_Resources.level".
• "Asteroids_m_1" and "Asteroid_m_2" are now harvestable thanks to sastrei. As 
  a consequence the affected maps need their resources rebalanced.
• Rebalanced RUs in "Spline Crazy", "Chicken Scratch", "The Squid" and 
  "Plasma_Globe".
• "Electromagnetic Doily" levels sink a bit lower now.
• Added a few more RUs to "Menger Sponge".
• Starting positions in "Spline Crazy" are now located directly within the 
  spline band.
• Easy Patches have been removed from "Spline Crazy".
• Moved the "source" folder over to the GitHub repo *only*.

1.26.2 - 2020/07/24
• Tweaked the "Metaball Madness" and "Metaballs II" maps.

1.26.1 - 2020/07/23
• Tweaked the "Metaball Madness" and "Metaballs II" maps.

1.26.0 - 2020/07/22
• Tweaked the "Metaball Madness" map.
• Added "Metaballs II" which is a similar map to "Metaball Madness", but larger.

1.25.0 - 2020/05/25
• Removed the custom gamerule. Maps should be compatible with most mods now.
• Updated a few things in "utilfunc.lua".

1.24.0 - 2016/07/11
• Updated unitcaps scripts to Patch 2.0.
• Reverted to an older PRNG that worked better. Updated all the maps to use the 
  older PRNG.
• Added a note to the docs telling how maps that use the default Lua "random" 
  function result in desyncs in multiplayer. (Skirmish works okay.)
• Fixed a bug in (5P) ELECTROMAGNETIC DOILY that could cause desyncs.
• Commented out some more broken ships in (2P) SHIP GALLERY so that the map 
  loads once again. But there are still issues with the map, and the textures 
  of all the ships and some screen elements are not loading at all. I don't 
  know how to fix this.
• Fixed issues with unitcaps files that were not updated after the 2.0 patch 
  was released.
• Removed the custom AI code. I don't remember why I even added it in the first 
  place.

1.23.0 - 2016/06/20
• Updated everything to work with Patch 2.0, including most HODs.
• Included the project source code along with the mod files.

1.22.3 - 2015/10/03
• Reverted the changed asteroid colors back to orange since someone complained 
  they were hard to see.
• Made the asteroid placement on each arm of the The Squid map identical so as 
  to ensure fairness. Pebbles are randomly placed, however.

1.22.2 - 2015/09/28
• Resource values were way too small by mistake. Reverted to defaults.

1.22.1 - 2015/09/27
• Somehow I got confused as to which asteroids I was using for my maps. I had 
  created some custom asteroids with greater visibility than GearBox's aster-
  oids, but wasn't using them. I have now corrected this error.
• Asteroid pixel colors changed from the HW2 default to a more grayish color.

1.22.0 - 2015/09/18
• Updated the mod to work with all the new changes in the latest GearBox patch.

1.21.1 - 2015/03/31
• For the hexagonal panel maps, I switched to using "box_8192_64_8192" instead 
  of "box_64_8192_8192" since it was kind of redundant.
• Made it so that the megalith asteroids in "(8P) Andromeda" can be attacked. 
  Their health is very high, though - more than 10 times that of the Hiigaran 
  mothership.
• Increased the ranges of the hyperspace inhibitor and defense field abilities 
  of the megalith asteroids in "(8P) Andromeda".

1.21.0 - 2015/03/30
• Redesigned "(4P) Metaball Madness" to be a FFA random map with better-looking 
  blobs.
• Added some easyPatches to "(4P) Metaball Madness", and reduced the number of 
  the largest asteroids in the surrounding area.
• Changed the way wall panels are selected and placed in "(8P) Greek Cross 
  Fractal".
• Added some easyPatches to "(8P) Greek Cross Fractal".
• Switched to using a different texture for the wall panel objects.

1.20.0 - 2015/03/26
• The mod now uses customized model assets, meaning the maps can no longer be 
  played online without all players having the mod installed.
• Added a gametype Lua file to prevent players from using the maps without also 
  having the mod.
• Re-added hyperspace inhibitors to Andromeda.
• Added seven new maze maps with custom megalith walls: "(2P) Go Around", "(3P) 
  Hex Maze Small", "(2P) Block Maze", "(8P) Greek Cross Fractal", "(6P) Menger 
  Sponge", "(6P) Hex Maze Big" and "(4P) Flat Maze". These were all taken from 
  my "HW2 BlockMaze" experimental mod. There are still issues with ships flying 
  through the walls when they shouldn't. I don't think these issues are 
  solvable.
• Maps once again use the dofilepath function to load "MapFunctions.lua".
• Split some of the utility functions off into "utilfunc.lua" taken from my HW1 
  & HWC Classic Maps mod.
• Updated to the latest version of "utilfunc.lua". The change means that random 
  seeds need to be declared in a different manner than before.
• Certain maps now use LuaBit v0.4 from http://luaforge.net/projects/bit/.
• Renamed many of the variables storing random seeds simply to be consistent.
• Recalculated many of the random seeds used for things like random music and 
  backgrounds so that maps don't all use the same decorations.
• Added more pebbles to "4p_Plasma_Globe" to make the shape more apparent.
• Updated "2p_Gallery_Resources" and "2p_Gallery_Ships" to reflect the latest 
  HWRM objects.

1.19.3 - 2015/03/18
• Fixed crash bug in Strange Attractor. It was referencing the text clouds I 
  made to make the level thumbnails.

1.19.2 - 2015/03/10
• New level thumbnails made using my text clouds.
• Some minor tweaks to the maps.

1.19.1 - 2015/03/04
• Levels can now select randomly from HW1 music and backgrounds as well.
• Fixed overlapping resources in "8p_Andromeda.level".
• Homeworld 2 is no longer supported.

1.19.0
• Converted some six player maps to eight players.
• New level thumbnails for HWRM.
• Changed the title of the collection to "Mikali's Multiplayer Map Collection".
• Renamed the folder structure to "HWR_MikaliMaps".

1.18.2
• Fixed a bug in the map functions that was preventing a map from loading 
  properly.

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
• Fixed the bug in (6P) Have a Ball where too many RUs were placed at the 
  poles.

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


TO DO LIST/NOTES

• I'm tempted to place some salvage debris in the center area of Andromeda. 
  Alternately, I could place some radiation clouds in the center. But there may 
  be enough maps with radiation already.
• There are still major issues on the maze maps with ships "cheating". It 
  shouldn't be possible to squeeze between adjacent panels when there are zero 
  units of space separating them. I don't think these issues are solvable 
  without having the game source code.
• Should probably rename the panel objects to "panel_x_y_z" and reserve the 
  title "box" for the cube-shaped objects.
• Should harvestable asteroids and clouds disappear after being depleted? Is 
  this even possible?
• Since "asteroid_m_1" and "asteroid_m_1" are now harvestable and provide 
  additional RUs, all affected maps need to be rebalanced.
• Maps that possibly have too many RUs include: "Scalar Field", "Strange 
  Attractor", and "Spline Crazy".
• "The Squash" should be turned into a 4-player map.
• "Rheotomic Spaces" is overall just a crappy map.
• "Curve Stitch" isn't great either, but could be improved without much work.
• "Have a Ball" is very boring. I could remake it in the shape of a basketball, 
  instead.
• "Klein Bottle" is unexciting as well. I would like to remove the Easy Patches 
  and replace them with something else. Dunno what.
• Not sure if the hyperspace inhibitor asteroids in "Andromeda" should have the 
  hardpoints with the little subsystem nodules stuck to them. Keep in mind that 
  the ability to rebuild these little subsystems may require changes to the 
  build and research scripts of every race, including races created by other 
  modders. (Not 100% sure, though.)
• "Bentus Meltdown" has too many Easy Patches and too few clouds in the rings.
• In "Chicken Scratch" maybe replace the asteroids and pebbles with pink nebula 
  chunks like in HW1C.
• Clouds obscure asteroids too much. Asteroids become hard to see.
• The larger asteroids should maybe also be represented by pixels in sensors 
  manager since the 3D models are hard to make out.
• Should maybe make it so that the spline endpoints aren't too close to one 
  another in "Spline Crazy".
• The map thumbnails were captured before I brighted the pebbles and asteroids, 
  I believe. As a result, the thumbnails are very faint and hard to make out. I 
  need to re-capture all of them at some point.
• "Metaballs II" does not have a thumbnail yet.
