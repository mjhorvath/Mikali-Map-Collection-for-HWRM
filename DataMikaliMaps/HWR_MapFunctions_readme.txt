Title: HWR Map Functions
Version: 1.23.2
Authors: Mikali
Created: 2004/10/07
Updated: 2020/08/01
Website: http://isometricland.net/homeworld/homeworld.php
Discussion:
http://forums.relicnews.com/showthread.php?t=48818
http://forums.relicnews.com/showthread.php?t=82964 (old thread)
http://forums.relicnews.com/showthread.php?t=40779 (old thread)


================================================================================


DESCRIPTION

A collection of custom map functions, as well as a map creation API, to be used
within your own maps.


INSTALLATION

Extract the contents of this archive into your "Homeworld2\Data\Scripts" 
directory. You must have also installed the Homeworld 2 v1.1 patch in order for 
these functions to work.


INSTRUCTIONS

If you're familiar with how maps were created in the original Homeworld, then
you already already have a head start in understanding how these functions 
work. Like Homeworld 1, most of the included functions create "fields" (or 
"bunches") of resources that are later populated using "distribution" tables. 
You don't control the position of every object in the "field"; rather, you set 
the position (as well as other basic properties) of the field, and the map 
functions fill the area randomly with the individual objects.

Documentation for the basic properties of each function, and the parameters 
they take, can be found in the form of comments within "MapFunctions.lua" 
itself.


USING THESE FUNCTIONS IN YOUR MAP

In order to utilize the functions in this archive, you must do one of two
things:

1. Copy the contents of "MapFunctions.lua" to the end of your level file.

or

2. Add the following line to the beginning of your level file:

	dofilepath("data:leveldata\\multiplayer\\deathmatch\\MapFunctions.lua")

If you choose the second method, you may not be able to host your maps over 
GameSpy or the Internet.

Additionally, these rules must be followed:

• Map functions must be called from within either the "DetermChunk" portion of
  your level file, or the "NonDetermChunk" portion of your level file, 
  depending on the particular function you're trying to use (see list of 
  functions, below).
• Map functions must be defined outside of any other function (don't define the
  function in "DetermChunk" or "NonDetermChunk").
• Distribution tables should be defined within the "DetermChunk" portion of 
  your level file, and must be declared before any of the functions reference 
  them.


================================================================================


HOW THE MAPS WORK

This map maker uses a principle of populating a map with objects stored in
containers--called 'Distributions'--that is carried over from the original
Homeworld and Homeworld: Cataclysm. Distributions are an efficient means of
storing data and making changes to large numbers of objects, simply and easily.

Distributions exist in the form of tables (or arrays) of information. All map
objects are stored in these tables. These tables contain all the information
(in the form of parameters) necessary to recreate the map objects. These tables
can also contain objects that reference other tables, thereby making it 
possible to nest objects within each other. Distribution tables are declared at 
the head of the 'DetermChunk' portion of a level file, and are referenced later 
by the map-populating functions.

Each map MUST have one distribution named 'Main'. This is the top-level
distribution. All objects stored in this distribution are added to the map as
entered. Each distribution uses a local coordinate system, so if distributions
are nested, then the coordinates from one distribution are added to the
coordinates of the other distribution.

The map-populating functions (such as the 'shapeAdd' function) count the number
and types of objects within a distribution and place the objects on the map
according to an algorithm. Any coordinates specified within the distribution 
are calculated in addition to whatever positional changes made by the algorithm.


================================================================================


INCLUDED MAP FUNCTIONS

Here is a list of some of most of the most important functions included in
"MapFunctions.lua". Many more aren't listed. They can be broadly separated into
two types:

1. "DETERMCHUNK" FUNCTIONS (these go in the "DetermChunk" portion of your level
   file):

   • branchAdd: Creates a branching tree.
   • splineAdd: Creates a spline-shaped tube connecting any two points using 
     two control points.
   • ringAdd: Creates an elliptical ring.
   • globeAdd: Creates a series of rings in the shape of a sphere, like the
     latitudinal and longitudinal lines of a globe.
   • shapeAdd: Creates one of several available mathematical shapes.
   • harmonographAdd: Creates a squiggly curving tube. The shape is similar to 
     that produced by a harmonograph, except in three dimensions. See Wikipedia 
     for more info.
   • strangeAdd: Creates a strange attractor, such as the Clifford or Lorenz 
     attractors.
   • spiralAdd: Creates a Nautilus (equiangular) or Archimedes spiral.
   • blobAdd1: Creates a network of metaballs, or blobs. Uses distributions.
   • blobAdd2: Creates a network of metaballs, or blobs. Does not use 
     distributions.
   • blobAdd3: Generates a regular 3D grid that is projected onto the surfaces 
     of one or more metaballs.
   • flokalAdd: Creates a kaleidoscopic bubble and swirl pattern kind of like a 
     doily.
   • stitchAdd: Generates a triangle made of cross-hatched line segments, like 
     in the art of curve stitching.
   • easyPatch: Creates a resource patch with minimal effort.

2. "NONDETERMCHUNK" FUNCTIONS (these go in the "NonDetermChunk" portion of your
   level file):

   • randomMusic: Randomly selects the level music.
   • randomBackground: Randomly selects the level background.


================================================================================


DISTRIBUTION TABLES

Distribution tables determine the number and type of objects that are used to
fill a shape. Without a distribution table to tell the function what to fill a
shape with, a shape created with any of the above functions would be completely
empty (like an empty container).

Here's an example of a distribution table:

	local MyDist =
	{
		{512,     "Pebble",     "Pebble_0", {0,0,0,}, 0, 0, 0,},
		{  4,   "Asteroid",   "Asteroid_4", {0,0,0,}, 100, 0, 0, 0, 0,},
		{100, "Coordinate", {},},
		{ 10,   "Function",      easyPatch, {0,0,0,}, 100,},
		{  6, "StartPoint",     "StartPos", {0,0,0,}, {0,0,0,}, 1,},
		{100,      "Point",      "MyPoint", {0,0,0,}, {0,0,0,}, 1,},
		{36,   "DustCloud", "polySurface1", "DustCloud_NoRes", {0,0,0,}, {1, 1, 1, 1}, 0, 10000,}
	}

In the example above, "MyDist" is the name of the distribution table. (This 
name can be changed to be anything you want). Contained within the distribution 
table are lists of parameters describing the actual map objects that you will 
use to populate the map.

The first parameter in each list specifies the number of objects of that type
that will get placed using the map function (e.g., 512 for the "Pebble_0"
object).

The second parameter in each list specifies the class of object (e.g. "Pebble",
"Asteroid", etc.)

The remaining parameters in each list correspond to the arguments you would
normally use when calling the default function for that type of object. For
example, if you were populating a map with an object of class "Asteroid", then
the table entries would correspond to the arguments you would normally use with
the addAsteroid() function. The exceptions are when declaring an object of 
class "Coordinate" or "Function". In these cases, the parameter following the 
class name is a reference to a table or a function, respectively.

Note that not all functions take a full distribution as an argument. For 
instance, the "flokalAdd" and "stitchAdd" functions take a portion or line of a 
distribution, and the first number parameter is ignored. For instance:

	local dist = {1, "Pebble", "Pebble_1", {0,0,0,}, 100, 0, 0, 0, 0,}
	stitchAdd({0,0,0,}, dist, {{-1000,-1000, 1000,}, { 1000,-1000,-1000,}, {-1000,-1000,-1000,}, 24, 1, 1,}, {0,0,0,}, nil)

This is because the functions don't produce random shapes, and they determine 
the number of objects they need algorithmically instead of based on some pre-
determined value.

Lastly, some functions like the "branchAdd" function apply the complete 
distribution to each section or chunk of the shape instead of the whole thing. 
I.e. each segment of the branch contains the full complement of asteroids, 
pebbles, etc.


================================================================================


OBJECT CLASSES

There are thirteen classes of objects, at this time:

	"StartPoint", "Point", "Sphere", "Camera", "Squadron", "Asteroid",
	"Salvage", "Pebble", "Cloud", "DustCloud", "Nebula", "Coordinate" and
	"Function".

The first eleven classes, except for the "StartPoint" class, all correspond to
standard HW2 map objects. The "StartPoint", "Coordinate" and "Function" classes
provide you with additional functionality. Additionally, the first five classes
take an additional parameter at the end that determines whether these items'
names are incremented as they are added.

The "StartPoint" class is a special class of object used for creating starting
positions. When creating starting positions, the third parameter in the list,
after the class name, must always equal "StartPos" (with quotes). The correct
number of sequentially numbered starting positions will automatically be 
created for you. Do make sure that, when generating starting positions using 
any of these functions, the total number of positions in a .level file is 
always equal to the value of the "maxPlayers" variable.

The "Coordinate" class tells the map function to just store the calculated
coordinates into a table that you can retrieve and use later. You refer to the
table later by its location in the distribution. For instance, in the example,
you would refer to it as follows:

	local MyDist =
	{
		{100, "Coordinate", {},},
	}

	local MyCoordinates = MyDist[1][3]

Or, you could create the table beforehand, and reference it from within the 
distribution. For instance:

	local MyCoordinates = {}

	local MyDist =
	{
		{100, "Coordinate", MyCoordinates,},
	}

Then, you would only need to reference the original table in order to retrieve 
the values from them.

The "Function" class allows one to pass the output of one function as the input
of another function. This nesting of functions makes it possible to do things
like placing spirals at the vertices of a cube. In the example above, the
"easyPatch" function is being used as a nested function. The "easyPatch"
function is a shortcut that generates ready-made resource patches, featuring
typical numbers of asteroids and RUs. It takes some of the labor out of crea-
ting resource patches by automatically placing several asteroids and pebbles 
around the desired location.

(Note: When using a function as a parameter, take special care that you enter
the name of the function without quotes and without any trailing parentheses.
Also, when nesting functions, it is assumed that the very first argument that a
nested function will take is a table containing X, Y and Z coordinates; so, if 
a function does not take XYZ coordinates as its first argument, the function 
may not work. Lastly, if you are nesting functions, makes sure that the dis-
tribution table is declared either at the end of the file, or within the 
"DetermChunk" portion of the level file, and before any functions are called 
(the default).)

There is also another type of class, the "named item" class, which can be
configured to behave slightly differently. "StartPoint", "Point", "Sphere",
"Camera" and "Squadron" all take an additional (boolean) parameter at the end
that determines whether the names of the objects increment each time the named
object is added to the map.

	local MyDist =
	{
		{100, "Point", "MyPoint", {0,0,0,}, {0,0,0,}, 1,},
	}

In the above example, for instance, the object named "MyPoint" gets added to 
the map 100 times. Since the last parameter is equal to one (instead of zero), 
the name gets incremented 100 times. This means the first point will be named
"MyPoint1" and any subsequent points will be named "MyPoint2", "MyPoint3" and 
so on until the hundredth point. If you set the last parameter to equal zero, 
then the name of each item will simply be "MyPoint" (e.g., without any numbers).

Note that the last parameter is actually ignored in the case of the 
"StartPoint" object, as this behavior is enabled by default.


================================================================================


RANDOMIZED VALUES

You'll notice that many of the shape functions take a parameter called "tSeed". 
This parameter - a table - contains the properties needed for the pseudo random 
number generator (PRNG) to work. The map functions now use a separate, custom 
random number generator instead of the default Lua "random" and "randomseed" 
functions. This is because Relic, the developers of Homeworld 2, changed the 
behavior of these functions in the 1.1 patch.

Originally, in Homeworld 2 1.0, all randomly generated values remained the same 
at the start of each skirmish match as per normal Lua behavior, and you could 
reset the PRNG output using the "randomseed" function. Players and mod makers, 
however, wanted the functions to generate all new values each time a match was 
started, and the developers were willing to fill the request. Unfortunately, 
the changes that Relic made meant that using the "random" and "randomseed" 
always resulted in desyncs. So, in order to revert back to the original 
behavior, those of us who wished to had to code and implement all new PRNGs.

Instances of the custom PRNG are set up by creating a table and assigning the 
"seed" parameter a negative integer. For instance:

	local my_seed = {seed = -4321}

In this case, "my_seed" is the table identifier, "seed" is the parameter you 
assign the integer to, and -4321 is the random number "seed". You then generate 
the random value by invoking the "srandom" function and passing the instance to 
it as its first argument:

	local my_random_value = srandom(my_seed)

In order for the various map functions to generate randomly placed objects, you 
pass the PRNG instance to the function in the same way. For instance:

	ringAdd({0,0,0,}, pebbleRing, {10000, 5000, 0, 0, {30, 330,}, 0,}, {90, 0, 0,}, my_seed)

If you want the PRNG to generate the same values it did earlier, simply create 
the PRNG instance again using the same seed, e.g.

	local my_second_seed = {seed = -4321}

Note that not all map functions are able to generate random positions. In these 
cases, simply pass a "nil" value to the PRNG instance instead of an identifier.

	flokalAdd({0,0,0,}, pebbleObject, {16, 16, 12, 3, 3, 6, 256, 0, 20000 * 4/4,}, {0,0,0,}, nil)

If you want the scripts to produce a totally randomized map each time the game 
is loaded, simply randomize the PRNG's seed using the game's default function:

	local my_seed = {seed = -random(4321)}

However, doing this will still result in desyncs, so only do this for maps that 
will only be played in singleplayer or skirmish - never multiplayer.


================================================================================


CREDITS

• MathWorld and Wikipedia for the parametric surface functions used in 
  "shapeAdd", "harmonographAdd" and probably elsewhere.
• GameDev.net for the implicit metaball formula used in "blobAdd".
• The function "flokalAdd" is based on 'doodle 4' by bitcraft at 
  OpenProcessing.org.
• The people at Stack Exchange Mathematics for a lot of additional help.
• Lorenzo Donati at Stack Overflow for the new pseudo random number generator.


================================================================================


CHANGE LOG

1.23.2 --- 2020/08/01
• Tweaks to "appendShape".

1.23.1 --- 2020/07/23
• Tweaked the "blobAdd1", "blobAdd2" and "blobAdd3" functions.

1.23.0 --- 2020/07/22
• Tweaks to debug texts.
• Renamed "blobAdd" to "blobAdd1".
• Tweaked the "blobAdd1", "blobAdd2" and "blobAdd3" functions.

1.22.0 --- 2016/07/11
• Reverted to the better PRNG function from versions 1.19.0 and earlier. 
  Updated all the maps to use the new function.
• Updated the docs and made a note that using the default Lua "random" function 
  anywhere will always result in a desync. (I just found this out for sure this 
  past week when I played multiplayer for the first time.)

1.21.0
• Added the blobAdd3() function. This function generates a 3D grid that is 
  projected onto one or more metaballs.

1.20.0
• Split many of the utility functions off into "utilfunc.lua" taken from my HW1 
  & HWC Classic Maps mod.
• Created the randomBattleMusic() function and configured all the maps to use 
  this script for battle music, and the older randomMusic() function for 
  ambient tracks only.

1.19.0
• I forgot.

1.18.4
• The map functions now support my new text clouds used to display starting 
  positions of a map.

1.18.3
• I forgot.

1.18.2
• Levels can now select randomly from HW1 music and backgrounds as well. As a 
  result, the scripts only work in Homeworld Remastered. Homeworld 2 is no 
  longer supported.

1.18.1
• Fixed an issue in vanglesXY that was causing values to return out of range.

1.18.0
• Added the "fieldCalc" function.
• Minor tweaks here and there.
• Added the <fThk> parameter to the "harmonographAdd" function. The function 
  now produces a true surface of revolution, and the <fThk> parameter allows 
  you to specify the thickness of the tube rim.

1.17.0
• Fixed a bug in "harmonographAdd". I neglected to convert the time parameter 
  to degrees. The shapes produced should be a lot prettier (and more regular) 
  now.
• You can now specify the time parameter in "harmonographAdd".
• Reversed the meaning of the iMod parameter in "harmonographAdd". 0 is now non-
  random mode, 1 is random.
• Added some personal thoughts as notes to the source code.
• Created the "heightmapAdd" function.

1.16.1
• The random background and music functions now take a seed value as per the 
  other random functions.
• The arms of the "spiralAdd" function are no longer identical. Object 
  positions have been made random in each spiral arm.

1.16.0
• Created the "fieldAdd" function.
• Tweaks to the "blobAdd" function. Objects should now be more noticeably con-
  centrated toward the center of each blob.
• Changed the order of input point coordinates in the "stitchAdd" function. 
  Maps utilizing it will need to be fixed.

1.15.0
• The "easyPatch" function now generates one additional asteroid.
• Renamed the "splineAdd" function to "spline3Add" since it is a cubic spline.
• Fixed the reversed rotational directions for the tubular cross-section of the 
  "spline3Add" function.
• Reversed the direction of the second control point in the "spline3Add" func-
  tion. This will break any maps made using the function.
• Created the "spline2Add" function that generates quadratic splines.
• Fixed the flattened branch tubes for the spline mode of the "branchAdd" 
  function.

1.14.0
• Lots of fixes to the "branchAdd" function:
• You can now move and rotate the object. (Doh!)
• Asteroids are now also distributed more evenly throughout each tubular 
  segment.
• You can now smooth the branches using spline curves.
• Created the "vmidpoint" function.

1.13.0
• The "blobAdd" function no longer checks the proximity of items it generates. 
  This was taking up too much CPU time.
• The "blobAdd" function also now accepts distribution tables as per most of 
  the other functions.
• Implemented yet another pseudo random number generator with a slightly dif-
  ferent syntax. The old LCG generator was creating visible "bands" or "planes" 
  in the plotted positions.
• The level name and max players are now printed to "HW2.log".

1.12.0
• The "ringAdd" function now centers elliptical rings around one of their foci, 
  producing more asymmetrical maps.

1.11.0
• Tweaks to the "blobAdd" function.
• Fixed a bug in the "vsubtractV" function.
• Optimizations for the "appendShape" function.
• Implemented a new pseudo random number generator since the old one was pro-
  ducing duplicate values after only several thousand iterations. The sytax has 
  changed as a result, requiring changes to each of the level files.
• Fixed a bug in the "globeAdd" function that was causing the bottom ring in 
  "6p_Have_a_Ball.level" to not appear.

1.10.0
• Replaced the Boy surface algorithm with a different parameterization.
• Created the "stitchAdd" function.

1.9.0
• Created the "flokalAdd" function.

1.8.0
• Created the "strangeAdd" function. Added the <iMod> parameter to the 
  "harmonographAdd" function.

1.7.1
• Small bug in harmonograph code.

1.7.0
• Created the "harmonographAdd" function. Removed the Lissajous curves from the 
  "shapeAdd" function since they are special types of harmonograph curve.

1.6.0
• Created the "blobAdd" function.
• Updated reference document.

1.5.7
• Added new versions of the default pseudo random number functions that can be
  seed manually. Should cut down on sync issues in multiplayer somewhat. A
  side-effect is that the maps will look identical each time you play.
• Updated all shape functions to use these new random functions instead of the
  old, volatile random ones. As a result, they all - with the exception of
  "easyPatch" - now require you to pass a seed to them as the final argument
  using "newseed".
• Fixed bug in "randomMusic" that caused the track name not to be printed to
  "HW2.log".
• "randomMusic" now prints the total number of tracks available in "HW2.log",
  just like "randomBackground".
• Fixed a bug in the mathematical formula for the "Klein8" (i.e. Klein bottle)
  shape.
• My custom map functions and map collection are now distributed together
  instead separately. The maps in the collection have all been updated to use
  the latest versions of the functions.
• The maps all transclude "MapFunctions.lua" now, so they will no longer
  function in multiplayer if the other player hasn't also installed the map
  functions.

1.5.6
• Fixed a bug in "makeRectangle".
• More space savings.
• The script now checks whether the "getn" and "tinsert" functions already 
  exist before defining them.
• Fixed a bug in the "vanglesXY" function. Values returned were the inverse of
  what they should have been.

1.5.5
• Took several measures to reduce the size of the file.
• Fixed bug in Boy, Kuen and Klein surfaces.

1.5.4
• Fixed bug in "globeAdd" function.
• Cloud, DustCloud and Nebula names are now incremented like the other named
  items if their amounts are greater than one.
• Item incrementation is done slightly differently now. The final table entry
  for named items is no longer necessary. However, an underscore now appears
  between the name and the incremented number.
• Added support for directional lights.
• Fixed bug with the "literalAdd" function.
• Fixed bugs with "addSobgroup" and "getn" functions.
• Added support for Reactive Fleets and Reactive Resources.
• Added a new function for adding squadrons to sobgroups that leaves the actual
  creation of the sobgroups to be done elsewhere.
• Fixed possible bug with adding cameras.
• Added documentation for each level function to "appendShape".

1.5.3
• I introduced a bug in the last version causing all maps not to load. It's
  fixed now.

1.5.2
• Named objects can now be configured to increment their names as they are
  added. This is in order to resolve issues where two or more items have
  identical names (a problem in many scripts!). This shouldn't cause errors in
  levels created with the previous version of this collection, but distribution
  tables should be updated to follow the new procedures, anyway. As a side 
  note, these functions used to work in sort of the same way in the past. I'm 
  not sure why I eliminated this behavior.

1.5.1
• Can't remember.

1.5.0
• The shapes generated by the "shapeAdd" function each now possess their own
  dedicated function. This means that non-random coordinates within most shapes
  are no longer supported.
• Changed the order and position of many functions' arguments. Most functions
  now take the same number of arguments.
• Merged the "shapeAdd" and "shapeAdd2D" functions.
• Slight change to how points are positioned around the "Lissajous3D" shape.
• Removed the "circumAdd" function.
• Added the "Lissajous" curve I forgot to add in the last version.

1.4.4
• Added the "Hypotrochoid", "Epitrochoid" and "Lissajous" curves to the
  "shapeAdd2D" function.
• Added the "Lissajous" curve to the "shapeAdd" function.

1.4.1
• Fixed a bug in the "tableinsert" function.
• Added many new shapes to the "shapeAdd" function.

1.4.0
• Fixed a major mistake: distribution tables were being indexed by their class
  names, potentially resulting in several table entries using the same index.
  Table entries are now no longer indexed explicitely. (This is the way it
  worked prior to v1.3.)
• Coordinates can now be stored in any arbitrary table when using the
  "Coordinate" class. The table used to store the coordinates is passed as an
  argument in the distribution table.
• Added the "Function" class. Functions now be nested by naming them in the
  distribution tables.
• The "EasyPatch" class has been deprecated in favor of using the new 
  "Function" class.
• Added the "Camera" class.
• Moved starting point generation to its own class, called "StartPoint".
• Added incremental counters for all classes.
• Added the "getlength" and "tableinsert" table manipulation functions.
• Added instructions to the documentation.

1.3.2
• The initial and ending radii can now be specified for the "splineAdd"
  function. Thickness is now specified using a different parameter.
• Thickness for the "splineAdd" and "branchAdd" functions is now specified 
  using pecentages (of the radius), as opposed to absolute amounts.
• Added additional trigonometric functions.

1.3.1
• Fixed a bug in the "ringAdd" function.

1.3.0
• Major change to how distribution tables are done. Distribution table entries
  are now indexed by class name. The first value is always the number of
  objects. All other values correspond to the normal function arguments for 
  that class of object (see the included level file for an example distribution
  table). Note that class names are case-sensitive. Also note that positions 
  are now stacked -- i.e., an object's position, a shape's position, and any 
  changes made to the position by a shape function are now summed.
• Most parameter names have been shortened to four letters to save space.
• Added the "Paraboloid", "Hyperboloid", "Astroid", and "Funnel" shapes to the
  "shapeAdd" function.
• The names of the "Helix" and "Torus" shapes have been changed to "Helicoid"
  and "Toroid".
• Fixed some errors in the commenting of the code.
• The "Ellipsoid" and "Cuboid" shapes in the "shapeAdd" function, as well as 
  all the shapes in the "shapeAdd2D" function, have been rotated so that their
  normals now point "upward" instead of "forward".
• Fixed a bug in the "branchAdd" function.
• The density of branches in the "branchAdd" function now remains constant even
  if the branches are made hollow.
• The parameters for most of the remaining functions have been collapsed into
  tables.
• The beginning and ending values of "t" (time) can now be specified for the
  "spiralAdd" function.
• Removed the array argument functions that were added in v1.1.3, and replaced
  them with the "literalAdd" function (see below).
• Added the "literalAdd" function. Objects listed in distribution tables can 
  now be placed on the map without any changes being made to their position.
• The "Camera" object is no longer supported in distribution tables until I can
  find a better way of managing them.

1.2.0
• "Torus", "Cone" and "Cylinder" in the "shapeAdd" function can now be scaled
  along all three axes.
• The length of the third axis has been doubled to its correct size for "Helix"
  in the "shapeAdd" function.
• The "easyPatch" and "adjustPatch" functions have been merged, preserving 
  their respective syntaxes.
• The rotation matrices have been changed due to my having gotton the order of
  the Z and Y axes mixed up. This is an internal change, and should only affect
  the output of the "circumAdd" function.
• The rotation matrices have been changed to follow the "roll-pitch-yaw"
  convention (i.e., rotations are done around the Z-axis ("roll") first, then
  the X-axis ("pitch"), and finally the Y-axis ("yaw")). This also means that
  objects can now be rotated around all three axes, instead of just two.
• Many function arguments have been put into tables, requiring changes to how
  you call the functions.
• More aspects of the "branchAdd" function are now randomized.
• A thickness parameter has been added to the "branchAdd" function. Branches 
  can now be made hollow.
• The density of each branch produced by the "branchAdd" function now remains
  constant (unless it is hollow).
• The "random" mode of the "branchAdd" function has been much improved
  cosmetically.
• The name of the "mathRound" function has been changed to "round".
• Added a bunch of vector functions.
• Renamed the "sphereAdd" function to "globeAdd".
• The "globeAdd" function now generates longitudinal lines, as well as
  latitudinal.
• The "spiralAdd" function now has an additional height parameter that allows
  one to optionally spiral upward or downward.
• Added the "splineAdd" function. It will connect any two points with a cubic
  spline, using two additional points as control points.
• Added the "shapeAdd2D" function, which adds an assortment of 2D shapes.
• Included an example map with the archive.

1.1.3
• Added a bunch of array argument functions.
• Thickness was fixed for "Ellipsoid" and added for "Cuboid" in the "shapeAdd"
  function. You can now make hollow or flat balls or boxes.
• The lengths of the axes have been doubled to their correct size for
  "Ellipsoid" and "Cuboid" in the "shapeAdd" function.
• You can now enter a value of zero as an argument in a lot of places, where
  before you couldn't. I've since replaced the random number function with
  something else [see below...].
• Added the "random2" function. It can accept zero-length intervals as
  arguments.
• You can now use custom backgrounds with the "randomBackground" function.
• Fixed a bug in the "circumAdd" function.

1.1.2
• The "randomMusic" function can now read a custom list of tracks.

1.1.1
• Expanded the "randomMusic" function to include the Homeworld 1 and Homeworld
  Cataclysm music. [...these have to be modded-in in some way]
• Changed thickness to height and width to thickness in the "ringAdd",
  "sphereAdd", "spiralAdd" and "shapeAdd" functions.
• Changed how thickness is measured in the "ringAdd" and "sphereAdd" functions.
  (...Still not sure I have it right.)

1.1.0
• Added the "circumAdd" function.
• Added the "randomBit" function.

1.0.0
• Initial release.


================================================================================


KNOWN ISSUES/NOTES

• I would prefer that RUs were specified by density (or by relative amount,
  ala HW1), as well as by absolute amount. [See the "HW1 to HW2 Map Conversion"
  page at the wiki for an example.]
• Elliptical rings are supposed to be widest where the curvature is smallest as 
  if formed by concentric ellipses sharing the same foci). I'm not sure if this 
  is happening correctly.
• I think some maps sometimes crash during online-multiplayer gameplay if less 
  than 6 players are playing and a map function is used to generate the 
  starting positions. This may have something to do with the "startNum" global 
  variable and the "appendShape" function. [Has this been fixed since I allowed 
  seeds to be defined for the random number functions?]
• The name of the table that coordinates are stored should be specifiable in 
  the distribution tables when an item's class name equals "Coordinate". 
  However, the "tinsert" function lies outside the ".level" scope. [fixed in 
  v1.4.]
• The "shape2DAdd" function shoud be merged with the "ringAdd" and "spiralAdd"
  functions. (Though the latter ones have a lot of peculiarities.)
• Functions should optionally output shapes to tables, instead of adding them 
  to the map, so that they can be iterated over other functions. [fixed in 
  v1.4.]
• Should allow the user to input minimum and maximum ranges for "t". [fixed for 
  some functions in v1.3.]
• Not sure if the way I rotate objects is the same as how HW rotates objects.
• Things like normal and tangent vectors, as well as Euler rotation angles,
  should be inheritable among nested functions. [Important!]
• The "shapeAdd" should be able to produce non-random results as well as random 
  ones. However the needed square and cube roots would produce discreprencies 
  in the number of objects created due to roundoff errors, unless you allow the 
  user to specify how many iterations to make for each FOR loop. But then you 
  would no longer be able to use distribution tables as you can now.  
• For the "blobAdd" function it may be possible to allow the user to input the 
  desired field strength. This would allow him to place different types of 
  pebbles or asteroids where the field is stronger or weaker instead of having 
  the algorithm take control of placement as is currently the case. This would 
  be more computationally expensive however since you're having to test smaller 
  and smaller yet more widely scattered areas. You also wouldn't be able to 
  keep track of previous values in order to avoid overlapping resources and 
  "stuck" resource collectors.
  On the positive side, it would allow you to use distribution tables like the 
  other shape functions, but the areas would be overlapping.
• Seeds for the PRNG should be below 65536 because, "The function works best if 
  you pass seeds below 65536 as higher numbers just get clamped to 16-bits 
  anyway." http://love2d.org/forums/viewtopic.php?p=134477#p134477
• The "strangeAdd" function can't accept distribution tables AFAIK because it's 
  a fractal and relies on previous iterations to calculate the values of newer 
  iterations. Same with "stitchAdd" and "flokalAdd".
• It would be better if the "branchAdd" function "grew" toward a vector, like a 
  tree grows toward the sun. Also, it would be cool for my Plasma Globe map if 
  the endpoints of the branches touched the inside surface of a sphere.
• The "tPos" argument of nearly all my functions should really come after the 
  "tRot" argument since translation actually occurs after rotation.
• The tubes generated by the functions should be double-checked so that they 
  are true surfaces of revolution with both an inner and an outer radius like 
  the spline functions.
• Need to make doubly sure that no overlapping resources are created at the 
  corners and edges by the "stitchAdd" function.
• Need a function to duplicate a table.
