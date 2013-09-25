<!-- 
.. title: Modeling How Programmers Read Code
.. slug: modeling-how-programmers-read-code
.. date: 2013/01/27 15:52:13
.. tags: programming,research,psychology
.. link: 
.. description: 
-->

[<a href="what-makes-code-hard-to-understand.html">Follow-up Post</a>] [<a href="https://www.youtube.com/user/synesthesiam/videos?sort=dd&view=0&tag_id=&shelf_index=0">More Videos</a>]

As my fellow Ph.D. student [Eric Holk talked about recently in his blog](http://blog.theincredibleholk.org/blog/2012/12/18/how-do-we-read-code), I've been running eye-tracking experiments with programmers of different experience levels. In the experiment, a programmer is tasked with predicting the output of 10 short Python programs. A [Tobii TX300 eye tracker](http://www.tobii.com/en/eye-tracking-research/global/products/hardware/tobii-tx300-eye-tracker) keeps track of their eyes at 300 Hz, allowing me to see where they're spending their time.

<!-- TEASER_END -->

Eric's blog post has a video of him reading one of the longer programs in the study, and it's interesting to see how he differs from a novice reading a version of the same program:

<iframe width="560" height="315" src="http://www.youtube.com/embed/VtuO9un2Vyg" frameborder="0" allowfullscreen></iframe>

When contrasting this with [Eric's video](http://www.youtube.com/watch?v=Jc8M9-LoEuo), a few things stand out to me. First, Eric's eye movements are precise and directed from the beginning. He quickly finds the first print statement and jumps back to comprehend the between function. The novice, on the other hand, spends time skimming the whole program first before tackling the first print. This is in line with expectations, of course, but it's cool to see it come out in the data.

Another thing that stands out is the pronounced effect of learning in both videos. As Eric pointed out, it appears that he "compiled" the between function in his head, since his second encounter with it doesn't require a lengthy stop back at the definition. The novice received an inline version of the same program, where the functions were not present. Nevertheless, we can see a sharp transition in reading style around 1:30 when the pattern has been recognized. Rather than browsing through many different lines, the novice begins to focus heavily on just the relevant numbers. This change in style carries over to the final few lines, where she makes quick work of the inlined common function (and forgetting to remove the extraneous comma!).

Cool, huh?

Difficulties with Eye-Tracking
------------------------------

In this last 30 seconds or so of the novice video above, you can see her back-and-forth comparison of the x and y lists. If you look carefully, however, the red dot (her gaze point) is often undershooting the numbers on both lists. Why is this? While it could be a miscalibration of the eye-tracker, the participant may also have been using her parafoveal (the region outside the fovea) to read the numbers. This and the fact that foveation and visual attention are not necessarily always the same (i.e., looking at something doesn't always mean you're thinking about it) encourages us to be cautious when interpreting eye-tracking data.

Goals of the Research
---------------------

I'm interested in helping the Psychology of Programming research community develop a measurable notion of usability for programming languages. There are [decades of research on code comprehension](http://www.amazon.com/Software-Design-Cognitive-Francoise-Detienne/dp/1852332530/ref=sr_1_1?ie=UTF8&qid=1355896718&sr=8-1&keywords=software+design+cognitive+aspects), but no real way of quantifying the difference in usability between something like single and multiple inheritance. To make progress, I believe we need to model what's going on in programmers' heads. While these kinds of models exist today, they're box and arrow diagrams; nothing you can execute with some code as input.

My dream is to develop a tool that incorporates a [computation cognitive model](http://act-r.psy.cmu.edu/about) of the programmer, and can "read" code in much the same way (or at least close enough to be useful). With such a tool, you could predict how complex a piece of code is by feeding it to the model and measuring aspects of the resulting "mental" representation. The model could have some initial set of long-term memory contents, representing the expertise of the programming or familiarity with the codebase. In the short term, this could replace simple structural complexity metrics, like lines of code and Cyclomatic Complexity. In the long term, the tool could help drive mainstream language design.

This research is exciting, but very preliminary. If you're interested in empirically-driven programming language design in the here-and-now, I suggest looking at [Andreas Stefik's Quorum programming language](http://quorum.sourceforge.net).

Let's Experiment!
-----------------

If you're in the Bloomington, IN area and would like to [participate in my experiment](http://synesthesiam.com/flyer), send me an e-mail. Tim the Terminal will thank you!

![Tim the Terminal](../assets/img/term_happy.png)
