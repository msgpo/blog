<!-- 
.. title: Fun Stuff
.. slug: fun-stuff
.. date: 2013/01/30 16:32:21
.. tags: 
.. link: 
.. description: 
-->

Stereogram Movies
-----------------

<table>
<tr>
<td style="vertical-align: top; width: 160px; padding: 0;">
    <img src="../assets/img/teapot.png" alt="Teapot" style="margin: 0;" />
</td>
<td>
<p>
    Most people are familiar with single image <a href="http://en.wikipedia.org/wiki/Autostereogram">autostereograms</a> (MagicEye pictures). Amazingly, human beings are also able to see <a href="http://en.wikipedia.org/wiki/Autostereogram#Animated">stereogram animations!</a> After seeing the <a href="http://www.kammerl.de/ascii/AsciiStereoMovie.php">ASCII Stereogram Movie Generator</a>, I decided to make my own generator using the OpenGL depth buffer.
</p>
<p>
    You can view several of my stereogram movies below, which use simple OpenGL shapes. Make sure to wait until they are fully loaded before trying to see the hidden shape (they will look like TV static when loaded). You may also be interested in <a href="https://github.com/synesthesiam/magicpy">downloading the Python code</a>. To run the programs, you will need the <a href="http://www.pythonware.com/products/pil/">Python Image Library</a> and <a href="http://pyopengl.sourceforge.net/">PyOpenGL</a>. Enjoy!
</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
[<a href="https://github.com/synesthesiam/magicpy">Python Code</a>]
&bull;
[<a href="https://github.com/synesthesiam/magicpy/raw/master/sample/pattern1.gif">Movie 1</a>]
&bull;
[<a href="https://github.com/synesthesiam/magicpy/raw/master/sample/pattern2.gif">Movie 2</a>]
&bull;
[<a href="https://github.com/synesthesiam/magicpy/raw/master/sample/pattern3.gif">Movie 3</a>]
&bull;
[<a href="https://github.com/synesthesiam/magicpy/raw/master/sample/pattern4.gif">Movie 4</a>]
</td>
</tr>
</table>
<br />

Inversion in a Circle
---------------------

<table>
<tr>
<td style="vertical-align: top; width: 160px; padding: 0;">
    <img src="../assets/img/checkers.png" alt="Checkboard plane" style="margin: 0;" />
</td>
<td>
<p>
I wrote a <a href="../assets/mihansen_q700.pdf">short paper</a> about <a href="http://en.wikipedia.org/wiki/Inversive_geometry#Circle_inversion">geometric inversion in a circle</a> for <a href="http://cogs.indiana.edu/people/homepages/hofstadter.html">Douglas Hofstadter's</a> class on <a href="http://www.indiana.edu/~deanfac/blfal10/cogs/cogs_q700_27979.html">Insight and Invention in Geometry</a>. The images below were generated with a simple program I created to perform inversion of images in a circle.
</p>
<p>
If you'd like to play around with the image inversion program, you can <a href="../assets/invert.zip">download the C# code</a>. There are a handful of options to try, such as changing the center of the circle, scaling the inverted image, and tiling the plane with the input image.
</p>
<p>
</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
[<a href="https://github.com/synesthesiam/invert">Python Code</a>]
&bull;
[<a href="https://github.com/synesthesiam/invert/raw/master/sample/checkers_inverted.png">Checkerboard Plane</a>]
&bull;
[<a href="https://github.com/synesthesiam/invert/raw/master/sample/rainbow_ocean.png">Rainbow Ocean</a>]
&bull;
<br />
[<a href="https://github.com/synesthesiam/invert/raw/master/sample/circuit_vortex.png">Circuit Vortex</a>]
</td>
</tr>
</table>
<br />


Lutz Complexity
---------------

<table>
<tr>
<td style="vertical-align: top; width: 160px; padding: 0;">
    <img src="../assets/img/graph.png" alt="Graph with nodes" style="margin: 0;" />
</td>
<td>
<p>
Have you always wanted to use the <a href="http://en.wikipedia.org/wiki/Minimum_description_length" title="Wikipedia MDL article">Minimum Description Length</a> principle as a <a href="http://en.wikipedia.org/wiki/Fitness_function" title="Wikipedia fitness function article">fitness function</a> in order to find the least complex hierarchical <a href="http://en.wikipedia.org/wiki/Modular_decomposition" title="Wikipedia modular decomposition article">modular decomposition</a> for a <a href="http://www.boost.org/libs/graph" title="BGL page">Boost Graph Library</a> graph of dependencies in C++?
</p>
<p>
No? Well, <a href="http://www.springerlink.com/content/9hy61tafvbm2ml13/">one person might</a>.  This code lets you compute the "Lutz Complexity" of a graph, which could be used in a genetic algorithm to find the "best", or least complex, way of putting nodes into modules based purely on their dependencies
.</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
     [<a href="https://github.com/synesthesiam/lutz">C++ Code</a>]
</td>
</tr>
</table>
<br />


The Game of Life
----------------

<table>
<tr>
<td style="vertical-align: top; width: 160px; padding: 0;">
    <img src="../assets/img/life_game.png" alt="Game of Life" style="margin: 0;" />
</td>
<td>
<p>
What coding website would be complete without a simulation of the <a href="http://en.wikipedia.org/wiki/Conway's_Game_of_Life">Game of Life?</a> This simple game has delighted children and struck fear in the hearts of introductory programming students for nearly two generations!
</p>
<p>
Be the first of your friends to <a href="http://synesthesiam.com/life/index.php?size=10&pattern=glider&time=100&ps=8">experience the magic a glider</a> or scratch your head trying to figure out <a href="http://synesthesiam.com/life/index.php?size=1&pattern=max&time=100&ps=8">what on Earth this is</a>! Barring that, see if you can <a href="http://synesthesiam.com/life/index.php?size=352&pattern=makehslr&time=100&ps=8">crash the javascript engine</a> in your browser with <a href="http://synesthesiam.com/life/index.txt">my inefficient PHP code</a>.
</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
[<a href="http://synesthesiam.com/life/">Web Site</a>] &bull;
[<a href="http://synesthesiam.com/life/index.txt">PHP Code</a>] &bull;
[<a href="http://synesthesiam.com/life/patterns.zip">Patterns</a>]
</td>
</tr>
</table>
<br />


Quake 3-ish Multiplayer Shooter
-------------------------------

For my final project in an undergraduate game programming class, I wrote a 3-D multiplayer first-person shooter. The game is written in C#, and uses OpenGL for 3-D rendering. Character models and maps come from Quake 2 and 3 respectively, though the weapons and items are designed by yours truly.

<table>
<tr>
<td style="vertical-align: top; width: 410px; padding: 0;">
    <iframe width="400" height="300" src="http://www.youtube.com/embed/pLr-rbj9zRA" frameborder="0" allowfullscreen></iframe>
</td>
<td style="vertical-align: top; padding: 0; padding-right: 10px;">
<p>
    I included a handful of multiplayer modes, such as standard deathmatch, a "collect as many items as possible" mode, and something called "marked man," where the goal was to be the marked man at the end of the round (you had to kill the previous marked man first).
</p>
<p>
    As with most of my own games, I quickly found that other people are much better than me. Next time, I plan to put in a "kill everyone else" button.
</p>
<br />
<p>
[<a href="../assets/fps_game_src.zip">C# Code</a>]
&bull;
[<a href="../assets/fps_game_bin.zip">Installers</a>]
</p>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
    
</td>
</tr>
</table>
<br />


DOS-Based Window Manager
------------------------

<table>
<tr>
<td style="vertical-align: top; width: 410px; padding: 0;">
    <iframe width="400" height="300" src="http://www.youtube.com//embed/IKF0WJ_MZ-o" frameborder="0" allowfullscreen></iframe>
</td>
<td style="vertical-align: top; padding: 0; padding-right: 10px;">
<p>
Back when the 486 was popular (or at least was the only kind of computer that my high school could afford), I wrote myself a simple graphical window manager in Pascal. It ran in good ol' mode 13h, which was 320x200 with 256 colors, and used no external graphics libraries (all of the core graphics routines were hand-coded in assembly).
</p>
<p>
I had planned to make my own "operating system" like Windows 3.11, complete with applications, but game programming soon stole my heart.  Thanks to <a href="http://www.dosbox.com/">DOSBox</a>, though, Mike OS will continue to live on, unaware that it is only a relic of a simpler age.
  </p>
</td>
</tr>
<tr>
<td>
[<a href="../assets/dos_wm.zip">Pascal Code</a>]
</td>
<td>&nbsp;</td>
</tr>
</table>
