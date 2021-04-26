# igemnace's Todo.txt Helper Scripts

This project was a set of scripts I wrote to manage my todo.txt. It had been
instrumental in my learning shell scripting, working with plain text on Unix,
and even publishing open-source.

However, I've outgrown what I've done here. There are gems of good practice, but
there are a few bad practices littered around as well. I would fix them, but I
also legitimately do not have a need for this anymore -- I use a different plain
text solution for my notes and to-dos nowadays.

I'm no longer actively maintaining this repo. If anything, I'll fix up the bad
practices and attempt to document them, as a potential case study of
implementing simple programs using simple Unix tools. If you *are* interested in
learning, my online Bash resource of choice is [GreyCat's wiki](http://mywiki.wooledge.org/EnglishFrontPage).
The [Guide] (http://mywiki.wooledge.org/BashGuide) and the [Pitfalls page](http://mywiki.wooledge.org/BashPitfalls)
are particularly nice starting points.

With that, you are free to use this project as you see fit, whether for
learning, or perhaps usage. I defer to your good judgment. *Caveat emptor.*

## About Todo.txt

Todo.txt by Gina Trapani is a simple format for making to-do lists. It relies on
plain-text files, allowing it to leverage the rich toolsets that have already
been developed to manage plain-text across different platforms.

More info can be found on [the official website](http://todotxt.com/).

## About todotxt-cli

There is already a CLI application developed by Gina Trapani herself to manage
todo.txt files. I recommend you take a look at it first, on [its Github page](https://github.com/ginatrapani/todo.txt-cli).

I developed this project mostly for two purposes:

- I wanted a minimal script that did nothing more than I needed
- I wanted to try my hand at shell scripting

Given these purposes, it's very likely that your use case will be better served
by the official CLI application than my project.

There is one upside to my project that I know of: I use fzf to fuzzy-find to-do
items and mark them as done.

## Pre-Installation

Make sure that your machine satisfies the following:
- Is using GNU/Linux (scripts are untested on other UNIX systems and will flat-out fail on Windows)
- Has git (required to clone this repo)
- Has env and bash (required to run the scripts)
- Has the usual GNU text utility programs, e.g. grep, cut, paste, sed, etc.

To make use of the optional fzf integration, you must also have installed fzf.
See [the GitHub page](https://github.com/junegunn/fzf) for instructions.

## Installation

Simply clone this repo and add it to your PATH. The scripts should be accessible
through the `todo` command.

## Usage

Run `todo help` for usage instructions.

I personally use these scripts with i3 keybinds. You can take a look at my
keybinds [here](https://gist.github.com/igemnace/64e812164285bdc319b481d500e004ab).

## Licensing

This project is licensed under the GNU General Public License v3 (GNU GPLv3).
