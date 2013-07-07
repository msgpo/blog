<!-- 
.. title: Python Recipes
.. slug: python-recipes
.. date: 2013/03/02 10:41:25
.. tags: python,programming
.. link: 
.. description: 
-->

From time to time, I come across or come up with interesting ways to solve problems in Python. To avoid forgetting them, I plan to update this post as I add more recipes to my collection.

If you know of a better way to do something, let me know!

<!-- TEASER_END -->

Convert a string to '\n' newlines
---------------------------------

When reading a file, Python can automatically convert line endings to `\n` (called [universal newlines](http://www.python.org/dev/peps/pep-0278/)). What if you have a string, though, and want to ensure that it has the right line endings?

    :::python
    from io import StringIO

    s_before = "I'm\r\nfrom\r\nWindows\r\n"
    print list(s_before)
    # ['I', "'", 'm', '\r', '\n', 'f', 'r', 'o', 'm', '\r', '\n', 'W', 'i', 'n', 'd', 'o', 'w', 's', '\r', '\n']

    s_after = StringIO(unicode(s_before), newline=None).read()
    print list(s_after)
    # [u'I', u"'", u'm', u'\n', u'f', u'r', u'o', u'm', u'\n', u'W', u'i', u'n', u'd', u'o', u'w', u's', u'\n']
       
This uses the [StringIO](http://docs.python.org/2/library/io.html#io.StringIO) class from the [io](http://docs.python.org/2/library/io.html) module (*not* the `StringIO` module), which requires you to convert your string to Unicode. The `newline` keyword argument controls how newline characters are translated (`None` enables universal newline mode).

Create a temporary file with a specific extension
-------------------------------------------------

Some libraries require files to have a specific extension, which can be a pain when your temporary file is named something like `tmp4HknTk`. [NamedTemporaryFile](http://docs.python.org/2/library/tempfile.html#tempfile.NamedTemporaryFile) to the rescue!

    :::python
    import tempfile
    EXTENSION = ".txt"

    with tempfile.NamedTemporaryFile(suffix=EXTENSION) as tmp:
        print "Temporary file path:", tmp.name
        tmp.write("Hello World\n")

    # Temporary file is automatically deleted

Generate a random string with letters and numbers
-------------------------------------------------

Not terribly complicated, but this is a good example of elegance in Python. This function will generate a random string with (ASCII) uppercase/lowercase letters and numbers.

    :::python
    import random, string
    def random_string(length):
        return "".join(random.sample(string.ascii_letters + string.digits, length))

    print random_string(10)

Run an external command
-----------------------

The [subprocess](http://docs.python.org/2/library/subprocess.html) module has a lot of nice stuff for running external commands. The two functions I use all the time are [check_call](http://docs.python.org/2/library/subprocess.html#subprocess.check_call) and [check_output](http://docs.python.org/2/library/subprocess.html#subprocess.check_output).

    :::python
    import subprocess
    
    # Raises an exception if the command fails (non-zero exit code)
    subprocess.check_call(["touch", "/path/to/file"])

    result = subprocess.check_output(["ls", "-l", "-a"])
    print result

I used this recently to import a SQL file into MySQL:

    :::python
    # mysql -u $user -p$password $db_name < $sql_path
    with open(sql_path, "r") as sql_file:
        subprocess.check_call(["mysql", "-u", user, "-p{0}".format(password), db_name], stdin=sql_file)


Get all files in a directory by extension
-----------------------------------------

When in doubt, [glob](http://docs.python.org/2/library/glob.html) it!

    :::python
    from glob import glob

    # All Python files in the current directory
    for path in glob("*.py"):
        print path

    # All Python files one directory down
    for path in glob("*/*.py"):
        print path

Get a file name (without extension) from a full path
----------------------------------------------------

If you have a full path but just want the file name (without the extension), use this function. There's probably already a function to do this, but I have yet to find it.

    :::python
    import os
    def get_name(path):
        return os.path.splitext(os.path.split(path)[1])[0]

    print get_name("/path/to/a/file.extension")  # file

Sort a list by values in a dictionary
-------------------------------------

Let's say you have a dictionary and you want to sort the keys by the values. Easy as pie!

    :::python
    d = { "a": 3, "b": 1, "c": 2 }
    print sorted(d.keys())                      # a, b, c
    print sorted(d.keys(), key=lambda k: d[k])  # b, c, a

Verify that a list contains no duplicates
-----------------------------------------

    :::python
    x = [1, 7, 10, 3, 2, 5, 0, 20, 4]
    assert len(x) == len(set(x))

Handle command-line arguments
-----------------------------

Replace this:

    :::python
    import sys

    if __name__ == "__main__":
        if len (sys.argv) < 3:
            print "Usage: my_script.py arg1 arg2 [--flag]"
            sys.exit(1)

        arg1 = int(sys.argv[1])
        arg2 = sys.argv[2]
        flag = True if "--flag" in sys.argv[1:] else False
        print arg1, arg2, flag

with this:

    ::python
    import argparse

    if __name__ == "__main__":
        parser = argparse.ArgumentParser(description="My Awesome Script")
        parser.add_argument("arg1", type=int, help="The first argument")
        parser.add_argument("arg2", type=str, help="The second argument")
        parser.add_argument("--flag", action="store_true", help="An optional flag")
        args = parser.parse_args()

        print args.arg1, args.arg2, args.flag

With [argparse](http://docs.python.org/2.7/library/argparse.html), you get a lot for free: argument type checking, flags in any position (`arg1 --flag arg2` works just as well as `arg1 arg2 --flag`), and a help screen (pass `-h` to see). Adding flags with short names and arguments is also a piece of cake:

    :::python
    parser.add_argument("-c", "--count", type=int, default=0, help="Count of something")
    # ...
    print args.count

Import a library from parent directory
--------------------------------------

Maybe it's evidence of a bad design, but on a few occasions I've needed to import a library script from one directory up. It's easy to import a script from a child directory, but a parent directory takes a little more work.

    :::python
    import sys, os

    # Add parent directory to path    
    sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))

    # Now you can import scripts in the parent directory
    from parent_script import magic_function

Read the first file in a zip archive
------------------------------------

I have some large CSV files that I like to keep zipped up. Not all libraries support reading zipped CSV files, but it's easy enough to use the [zipfile](http://docs.python.org/2/library/zipfile) module as an intermediary.


    :::python
    import zipfile

    def from_zip(path):
        archive = zipfile.ZipFile(path)
        return archive.open(archive.namelist()[0])

    with from_zip("/path/to/file.zip") as my_file:
        for line in my_file:
            print line


Here's a little function to zip up a file and then delete the original:

    :::python
    import os, zipfile
    def zip_delete(in_path, zip_path):
        with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as new_zip:
            new_zip.write(in_path)
        os.unlink(in_path)


Recursively match a file name filter (e.g., `*.mp3`):

    :::python
    import fnmatch, os
    def globr(pattern, dir="."):
        for root, _, file_names in os.walk(dir):
            for f_name in file_names:
                yield os.path.join(root, f_name)
