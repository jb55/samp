# samp [![Build Status](https://secure.travis-ci.org/jb55/extname.c.png?branch=master)](https://travis-ci.org/jb55/extname.c)

Sample input given some probability

## Installation

  Install with [clib](https://github.com/clibs/clib):

    $ clib install jb55/samp

  Install with make:

    $ git clone https://github.com/jb55/samp.git /tmp/samp
    $ cd /tmp/samp && make install

## Examples

Return a line 50% of the time

    $ samp < data.txt

Return a line 10% of the time

    $ samp 0.1 < data.txt

## License

  MIT


