<!-- 
.. title: Art Gallery
.. slug: art
.. date: 2013/02/2 17:51:07
.. tags: 
.. link: 
.. description: 
-->

<p>
I enjoy drawing small pieces of art for presentations and friends using the <a href="http://inkscape.org/">Inkscape</a> vector graphics program. The gallery below is an assorted collection of things I've drawn over the last few years.
</p>

<p>
Click on the individual pictures to download higher quality verisons of each image. All images and source files are free for personal and commercial use.
</p>

<div>
    [<a href="../assets/all_svg.zip" title="SVG sources">SVG Sources</a>]
</div>

<%
    import os
    from glob import glob

    names = sorted([os.path.splitext(os.path.split(p)[1])[0]
        for p in glob("files/assets/img/art/*.png")])
%>

% for name in names:
    <div style="display: inline-block; width: 110px; height: 110px; text-align: center; vertical-align: middle; border-right: 2px solid #CCC; border-bottom: 1px solid #CCC; border-left: 1px solid #EEE; border-top: 1px solid #EEE; margin: 15px 10px; padding: 5px;">
        <a href="../assets/img/art/${name}.png" title="${name}">
            <img src="../assets/img/art/${name}_thumb.jpg" />
        </a>
    </div>
% endfor
