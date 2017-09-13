# Prolog Learning Hour

These are some exercises that introduce some of Prolog's core concepts.

## Installation

### OSX

The install helper requires [homebrew](https://brew.sh/).

    $ git clone git@github.com:Futurelearn/prolog_learning_hour.git
    $ cd prolog_learning_hour
    $ make install

### Ubuntu

If you're using Ubuntu 17.04 or later, swi-prolog is available in the
default repositories:

    $ sudo apt-get update
    $ sudo apt-get install swi-prolog

I believe (but have not verified) that on earlier Ubuntu systems the
following will work instead:

    $ sudo add-apt-repository ppa:swi-prolog/stable
    $ sudo apt-get update
    $ sudo apt-get install swi-prolog

## Usage

There are two sets of exercises:

* Family tree - `src/genealogy.pl`
* Peano numbers - `src/peano.pl`

Start with the family tree exercises and move on to the Peano numbers if
there's time. Don't worry if not! I'm trying to cram about four weeks of
an undergraduate computer science course in a single hour. :-)

Each file contains its own instructions and a number of exercises. Some
of these will ask you to run queries at the console, which you can do
with `make console` - this will load all code in the exercise files.

    $ make console
    ?- parent(mildred, bob).
    true.

    ?-

Other exercises ask you to define new facts or rules, which you can
write directly in the exercise files where indicated.

There are a number of pre-written tests for these new rules, which will
all fail to start with:

    $ make test
    < lots of yelling output >

To see the tests themselves, look at `test/genealogy_test.pl` and
`test/peano_test.pl`. The test output for failures isn't very friendly -
sorry about that. Ask questions whenever something's not clear. :-)
