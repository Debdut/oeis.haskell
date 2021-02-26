In January 2017, Neil Sloane did a talk at Rutgers called Winter Fruits: New problems from OEIS December 2016 – January 2017.

On [slide](http://neilsloane.com/doc/Jan2017EM.pdf) 12, Neil brought up a letter that Richard Guy
had sent him from June 24, 1971, in which Guy describes a handful of sequences. Neil asked if folks
could give more precise definitions for the sequences, and extend/correct them. I did this for [A279197](http://oeis.org/A279197).

A279197 counts self-conjugate inseparable solutions of X + Y = 2Z. (integer, disjoint triples from {1,2,3,...,3n}).

I was able to determine that this meant:

> An inseparable solution is one in which "there is no j such that the first j of the triples are a partition of 1, ..., 3j" (See A202705.)
A self-conjugate solution is one in which for every triple (a, b, c) in the partition there exists a "conjugate" triple (m-a, m-b, m-c) or (m-b, m-a, m-c) where m = 3n+1.

This directory contains some programs relating to this sequence and other analogous sequences.
