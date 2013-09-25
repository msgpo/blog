<!-- 
.. title: Software Carpentry: What I've Learned
.. slug: software-carpentry-what-ive-learned
.. date: 2013/09/25 10:42:56
.. tags: programming,python,software-carpentry
.. link: 
.. description: 
-->

My first exposure to [Software Carpentry](http://software-carpentry.org/) was during a bootcamp at Indiana University in March of 2012. I volunteered to be a helper, and found myself really enjoying helping motivated students learn how to incorporate the material into their own research. I've since volunteered as an instructor at a handful of other bootcamps (including one at IU again this past summer). In this post, I'll briefly discuss some "lessons learned" from Software Carpentry.

<!-- TEASER_END -->

As a computer science major and professional programmer, Software Carpentry hasn't really taught me any new coding skills. As a graduate student and a scientist, however, I've learned some **very** important lessons. In summary, they are:

* **Good science is reproducible by others**
    * Your results should always be a `make` away
* **Sharing is caring**
    * Code and data should be publicly available (when possible)
* **Stand on the shoulders of giants**
    * Build new software with freely-available tools and libraries
* **Teach others to understand yourself**
    * Nothing helps you see the gaps in your own understanding like trying to explain to someone else!

## Good Science is Reproducible by Others

Have you ever read a paper, and wondered (precisely) how they got their results? Have you ever unearthed some of your (or a labmate's) old code, and tried to reverse engineer the magic 10 steps necessary to compile and run it? You're not alone.

Software Carpentry promotes *reproducible science* via automation. For me, this boils down to a simple rule of thumb: anyone who has access to my code should be able to (1) clone the repository, and (2) run [make](http://software-carpentry.org/v4/make/index.html) to generate the final product. This holds true for my papers and, thanks to the [IPython Notebook](http://ipython.org/notebook.html), it's now possible for me to generate my figures and PDFs using the same process.


## Sharing is Caring

Sharing your code and data is part of reproducible science, but making it publicly available (as opposed to by request) changes the game a bit. When your code is up on [Github](https://github.com/) for the world to see, its quality becomes a much higher priority. Although it can be scary to have the intimate details of your analyses exposed, the benefits are numerous. Others can build on your work, confirm your results, and avoid making the same mistakes you made by trying to "reinvent the wheel".

When possible, I believe data should also be shared. In many cases, this means more than just depositing a .zip file or an SQLite database somewhere. The [Software Carpentry website](http://software-carpentry.org/blog/2013/05/reuse-your-data.html) links to some good resources for sharing data.


## Stand on the Shoulders of Giants

I'll admit to falling prey to the [Not Invented Here](http://en.wikipedia.org/wiki/Not_invented_here) syndrome on occasion. As a programmer, you sometimes would rather write it yourself than learn to use someone else's tool or library. But there are benefits to taking the extra time.

First, you are going to forget at least one corner case. A classic example is deciding to write your own [CSV](http://en.wikipedia.org/wiki/Comma-separated_values) parser and forgetting to properly handle commas inside of quotes. What seems like a simple problem can quickly consume hours or days of your time. Second, your software can get better without any additional effort. Bugfixes, performance improvements, and new features can be added to the libraries you depend on. What better way to fight [code rot](http://en.wikipedia.org/wiki/Software_rot)? Finally, learning to use libraries makes you more than a one-trick programmer; you begin to see solutions as decomposable into well-known building blocks rather than as a monolithic entity.


## Teach Others to Understand Yourself

Even though I use Python as my main language day-to-day, it always amazes me how often gaps in my knowledge are exposed during bootcamps. Students quickly go down paths I would never have considered, and it helps me learn more about the thing I'm supposed to be an expert in.

For example, I mistakenly typed this code during a presentation at a recent bootcamp:

    :::python
    x = 2
    if x % 2:
        print "Even"
    else:
        print "Odd"

This had the opposite behavior of what I was expecting because of the mistake in the critical line:

    :::python
    if x % 2 == 0:

It led to a brief discussion about which values Python considers "true" and "false", and I had wrongly assumed that only `False` and `None` were "false" (0 and the empty list are too). I still advise students not to depend on these behaviors (they can vary by language), but it was a learning moment for me too.

## Fight the Good Fight

If you're interested in [learning, hosting, or teaching](http://software-carpentry.org/contrib/training.html), Software Carpentry is always looking for motivated people wanting to do good science.
