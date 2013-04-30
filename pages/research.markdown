<!-- 
.. title: My Research
.. slug: research
.. date: 2013/01/30 16:32:17
.. tags: research
.. link: 
.. description: 
-->

The Cognitive Complexity of Code
--------------------------------
<div class="row-fluid">
<div class="span3">
<img src="../assets/img/brain_steam.png" />
</div>
<div class="span9">
<p>
I am working with <a href="http://www.cs.indiana.edu/~lums">Andrew Lumsdaine</a> and <a href="http://cogs.indiana.edu/people/homepages/goldstone.html">Rob Goldstone</a> to quanitify the cognitive complexity of code. A <a href="http://www.amazon.com/Software-Design-Cognitive-Francoise-Detienne/dp/1852332530/ref=sr_1_1?ie=UTF8&qid=1355896718&sr=8-1&keywords=software+design+cognitive+aspects">great deal of research</a> has been done on program comprehension, but results are largely qualitative.

We would like to develop <a href="http://act-r.psy.cmu.edu/about">a computation cognitive model</a> of a programmer that can "read" simple programs and guess their output. With such a model, we could predict how complex a program appears to a programmer by feeding it code and measuring aspects of the model's behavior (e.g., speed and correctness). Programmers of different experience levels could be simulated by having models with different long-term memory contents, such as schemas for common operations.
</p>
<p>
Our [Onward! workshop paper](http://dl.acm.org/citation.cfm?id=2384596) describes the grand vision. We have [a paper available on arXiv](http://arxiv.org/abs/1304.5257) with experimental results. You can also read about our <a href="../posts/modeling-how-programmers-read-code.html">recent eye-tracking experiment</a>, which we're in the process of writing up.

 <!--made the front page of <a href="http://developers.slashdot.org/story/12/12/19/1711225/how-experienced-and-novice-programmers-see-code">Slashdot</a> and <a href="http://news.ycombinator.com/item?id=4940952">Hacker News</a>!-->
</p>
</div>
</div>
<br />


Covert Communication on Android
-------------------------------
<div class="row-fluid">
<div class="span3">
<img src="../assets/img/droid.png" style="margin: 0;" />
</div>
<div class="span9">
<p>
<a href="http://www.cs.indiana.edu/~ralhill/">Raquel Hill</a>, Seth Wimberly, and I investigated the properties of several <a href="http://en.wikipedia.org/wiki/Covert_channel">covert channels</a> on the <a href="http://www.android.com/">Android</a> platform for smartphones (<a href="../assets/hansen2012covert.bib">paper Bibtex</a>). First identified by Schlegal et. al in their <a href="http://www.cs.indiana.edu/~kapadia/papers/soundcomber-ndss11.pdf">Soundcomber</a> paper, these channels allow applications to share information in a potentially undetectable manner (i.e. one application changes the volume setting while another application reads it at a known interval).
</p>
<p>
We designed a simple system to detect covert communication over channels that does not require permission from the user at install-time. In addition, we are measured the bandwidth and error-rate of each channel in the presence of various kinds of system noise.
</p>
</div>
</div>
<br />

Transfer Entropy and Rat Cortical Networks
------------------------------------------
<div class="row-fluid">
<div class="span3">
<img src="../assets/img/transent.png" style="margin: 0;" />
</div>
<div class="span9">
<p>
<a href="http://biocomplexity.indiana.edu/research/info/beggs.php">John Beggs</a> and Shinya Ito have developed fast algorithms for computing standard and extended versions of Thomas Schreiber's <a href="http://prl.aps.org/abstract/PRL/v85/i2/p461_1">transfer entropy</a>. I collaborated with them to optimize these algorithms as well as analyze their time complexities (<a href="http://www.plosone.org/article/info%3Adoi%2F10.1371%2Fjournal.pone.0027431">link to publication</a>).
</p>
<p>
Together, our efforts have resulted in the <a href="http://code.google.com/p/transfer-entropy-toolbox/">Transfer Entropy Toolbox</a>, a collection of MATLAB and C++ tools that will allow researchers to compute effective connectivity for hundreds of neurons and hours worth of data using a standard desktop computer.
</p>
<p>
We plan to apply knowledge gained from using transfer entropy on simulated networks to analyze actual recordings from hundreds of rat cortical neurons.
</p>
</div>
</div>
<br />

<hr />

Pixel: Collaborative Digital Art
--------------------------------
<div class="row-fluid">
<div class="span5">
<img src="../assets/img/pixel_board.png" style="margin: 0;" />
</div>
<div class="span7">
<p>
<a href="http://cogs.indiana.edu/people/homepages/goldstone.html">Rob Goldstone</a> and I developed a game called <em>Pixel</em> that allows a dozen or so players to collectively create a picture on a shared black and white grid.
</p>
<p>
Each player has a unique avatar like <img src="../assets/img/player_1.png" alt="avatar 1" style="width: 1.25cm;" /> or <img src="../assets/img/player_2.png" alt="avatar 2"  style="width: 1.25cm;" /> and they are allowed to toggle the grid cells with their avatar using a remote control. The group as whole is given a single goal like "Draw a Circle" or "Draw Either the Letter C or the Letter E". A round is over when no changes to the grid have been made for 15 seconds.
</p>
</div>
</div>
<div class="row-fluid spacer">
<p>
We have run experiments for a variety of conditions which vary the type of goal (simple vs. conjunctive) and how players are assigned grid cells (random, clustered, anti-clustered). By reserving certain grid cells, we have also created a version of the game where players find solutions to the <a href="http://en.wikipedia.org/wiki/Travelling_salesman_problem">Travelling Salesman Problem</a>. 

<!--You can see real-time recordings from many of our experiments at the <a href="http://synesthesiam.com/pixel">Pixel website</a>.-->
</p>
</div>
<br />

Flatland: Sorting, Panic, N-Queens, Predator/Prey 
-------------------------------------------------
<div class="row-fluid">
<div class="span5">
<img src="../assets/img/flatland.png" style="margin: 0;" />
</div>
<div class="span7">
<p>
I worked with <a href="http://cogs.indiana.edu/people/homepages/goldstone.html">Rob Goldstone</a> to develop a general purpose, 2-D game for researching group tasks in a variety of domains. In <em>Flatland</em>, players move avatars on a grid world using a Nintendo Wii&reg; Remote.
</p>
<p>
Many different settings are available such as grouping players into teams, placing obstacles on the game board, making the world toroidal (i.e., wrap around), disallowing players from occupying the same grid cell, and designating some players as "predators" who can capture "prey" players.
</p>
</div>
</div>
<div class="row-fluid spacer">
<p>
We have used Flatland to model a variety of group task domains including sorting (by color, team name, etc.), panic scenarios (i.e., obstacles are present and someone yells "fire!"), the <a href="http://en.wikipedia.org/wiki/Eight_queens_puzzle">N-Queens problem</a>, and a handful of predator/prey scenarios. 

<!--You can see real-time recordings of many of our experiments at the <a href="http://synesthesiam.com/flatland">Flatland website</a>.-->
</p>
</div>
