# Prolog Learning Hour

These are some exercises that introduce some of Prolog's core concepts.
Get started by cloning the repo:

    $ git clone git@github.com:Futurelearn/prolog_learning_hour.git
    $ cd prolog_learning_hour

## Installation

There are many different Prolog implementations - the exercises require
one called [SWI-Prolog](http://www.swi-prolog.org/).

### OSX

For Macs, assuming you've got [homebrew](https://brew.sh/) already
installed:

    $ brew install swi-prolog

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

## Editors

Prolog files use a `.pl` extension. Unfortunately this is also used by
Perl, so by default your editor will probably try to highlight the
exercise code as Perl. Prolog was first, though, by some 15 years. Get
off my lawn.

To get proper syntax highlighting, here are some plugins for different
editors:

* [Atom](https://atom.io/packages/language-prolog)
* [Sublime Text 2 & 3](https://github.com/alnkpa/sublimeprolog)

Vim and emacs should work just fine because, naturally, these editors
ship by default with syntax for all of the 70s languages.

## Usage

There are two sets of exercises:

* Family tree - `src/genealogy.pl`
* Peano numbers - `src/peano.pl`

Start with the family tree exercises and move on to the Peano numbers if
there's time. Don't worry if not! I'm trying to cram about four weeks of
an undergraduate computer science course in a single hour. :-)

Each file contains its own instructions and a number of exercises. Some
of these will ask you to run queries at the console, which you can do
with `make console` - this will automatically load all code in the
exercise files so you can query your programs:

    $ make console
    ?- parent(mildred, bob).
    true.

    ?-

Other exercises ask you to define new facts or rules, which you can
write directly in the exercise files where indicated.

There are a number of pre-written tests for these new rules, which will
all fail initially. Run them with:

    $ make test
    < lots of yelling output >

To see the tests themselves, look at `test/genealogy_test.pl` and
`test/peano_test.pl`. The test output for failures isn't very friendly -
rspec-style delights haven't quite found their way into Prolog just yet.
Please ask questions freely whenever something's not clear. :-)
