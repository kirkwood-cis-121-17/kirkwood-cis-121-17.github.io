---
layout: post
title: "Command Line Practice"
comments: true
categories:
 -
---

# Review Practice 1

## Practice 1

1. make a folder called pets
2. create 5 files: sassy, mittens, garfield, and santas little helper in pets
3. make two folders in pets, cats and dogs
3. move sassy and garfield into cats
4. move santas little helper into dogs
5. mittens is both a dog and cat, so move and then copy the file

# Editing & Finding

VIM is our text editor

* good to know because it’s always available
* You should be in your “kNumber” directory
* vim test.txt
* vim is a modal editor
* type a j, it does nothing because you are in command mode
* type an ‘i’
* see the ‘insert’ text at the bottom now you are in ‘insert’ mode
* type j
* now  you see the text
* type escape
* you are back in command mode
* type 10.
* what did it do
* type yy
* type 5p
* what did it do
* y = yank p = put/paste
* make sure you are in command mode
* what do h,j,k,l do?
* where have we seen this before?
* move your cursor some place and press x
* now try dd
* x = delete under cursor, dd = delete a line
* to quite, we need :q, what does the message say?
* use ! to override
* open file again
* add some text
* this time :w
* now :q

# Looking for files

We can use the `find` command to search for files or directories

`find ~/workspace "*.txt"`

Find all the files in `~/workspace` that have a `.txt` extension.

`grep -R Chris ~/workspace`

Find all files in `~/workspace` that contain the text `Chris`

# Exercise

With a partner, clone the zoo workspace on cloud 9.

There are a list of files that you need to figure out what to do with them.

There is a `python` script you can run to help you figure out what to do. _you
can also view the code to see what it does which would in turn tell you want to do_

`python bin/check-zoo.py`
