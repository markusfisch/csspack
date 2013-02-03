Various implementations of a short and simple CSS compressor
============================================================

Why?
----

Because I searched for a simple and portable offline solution and
couldn't find anything suitable.

What is it good for?
--------------------

If you like to organize your style sheets in many files and use
some kind of synchronization process (rsync, Makefile, etc.), you
need a compressor that fits into that chain.

Which one?
----------

The output of all solutions is equivalent. Choose the one that fits
into your environment. If you're looking for performance, gawk seems
to be fastest.

What is compressed?
-------------------

Comments, new lines, and superfluous white space is removed. Combining
longhand statements into shorthand statements is something I like to
do myself.
