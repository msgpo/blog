<!-- 
.. title: About Me
.. slug: about-me
.. date: 2013/01/27 17:51:07
.. tags: 
.. link: 
.. description: 
-->

<%! import os %>
<%!
def resume_size():
    return int(round(os.stat("files/assets/hansen_resume.pdf").st_size / 1000.0 + 0.5))
%>

<div class="row-fluid">
    <div class="span3">
        <img class="img-polaroid" src="../assets/img/mike_pic.png" />
    </div>
    <div class="span9">
        <h2 style="margin-top: 0;">Michael Hansen</h2>
        <p>
            miha<a href="http://www.google.com/recaptcha/mailhide/d?k=01qPCnFJCwIWT-N08RNuiAHA==&amp;c=wrSQHKZyt-Qw16OCHelVRyJ6wu3KFktzSALC4k6NZBY=" onclick="window.open('http://www.google.com/recaptcha/mailhide/d?k\07501qPCnFJCwIWT-N08RNuiAHA\75\75\46c\75wrSQHKZyt-Qw16OCHelVRyJ6wu3KFktzSALC4k6NZBY\075', '', 'toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=0,width=500,height=300'); return false;" title="Reveal this e-mail address">...</a>@indiana.edu
        </p>
        <strong>Ph.D. student</strong> in Computer Science and Cognitive Science
        <ul>
            <li>Center for Research in Extreme Scale Technologies (<a href="http://pti.iu.edu/crest">CREST</a>)</li>
            <li>Percepts and Concepts Lab (<a href="http://cognitrn.psych.indiana.edu/">PCL</a>)</li>
        </ul>

        <ul class="unstyled">
            <li>M.S. Computer Science, Indiana University (2012)</li>
            <li>B.S. Computer Science, University of Wyoming (2006)</li>
        </ul>
    </div>
</div>
<div class="row-fluid">
    <div class="span12">
        <a href="../assets/hansen_resume.pdf" class="btn btn-primary">My Resume</a>
        <span class="muted">&nbsp;(PDF ${resume_size()}KB)</span>
    </div>
</div>
<div class="row-fluid spacer">
    <p>
        Howdy. I'm a Ph.D. student at Indiana University, majoring in <a href="http://www.soic.indiana.edu/">Computer Science</a> and <a href="http://cogs.indiana.edu/">Cognitive Science</a>, and working as a research assistant at <a href="http://pti.iu.edu/crest">CREST</a> (formally the Open Systems Lab). I'm interested in how programmers read and understand code.
    </p>
    <p>
        I received my B.S. in Computer Science from the <a href="http://www.uwyo.edu/">University of Wyoming</a> in 2006. From 2003-2007, I did contract programming for businesses and government offices in the Wyoming and Colorado area. Before coming to IU in 2008, I worked as a consultant for <a href="http://www.lim.com/">Logical Information Machines</a>. In 2012, I received my M.S. in Computer Science from Indiana University.
    </p>
    <p>
        In my free time, I like to volunteer for <a href="http://software-carpentry.org/">Software Carpentry</a>.
    </p>
</div>
