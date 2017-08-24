---
layout: post
title: "Learning the command line"
comments: false
categories:
 -
---

# Command Line 

When we type something in to the command line we are running a program.

On windows you might type `notepad` or `explorer`

These are programs that we are running.

We can give arguments to programs to tell them what we want to do. For example `explorer https://google.com` or `explorer https://kirkwood.edu`

Sometimes the arguments are positional, sometimes they are named

This isn't real, but it illustrates the point

```
explorer https://google.com 800 400
explorer https://google.com -width 800 -height 400
explorer https://google.com -height 800 -width 400
```

At the command line we use programs and arguments to answer these questions:

* `pwd` - What directory am I in
* `cd <path>` - Change to the directory at path
* `mkdir -p <path>` - Create the directory and all parent directories
* `ls <path>` - List the contents of a directory. `-alh` switches show all, more info and human readable file size
* `man <command>` - Display the manual (help) for the given command. Use j, k, h, l to move around. /,n,N to search and q to quit
* `touch <path>` - create a file
* `rm <path>`  - remove a file
* `mv <src_path> <dest_path>` - Move a file from src to dest
* `cp <src_path> <dest_path>` - Copy a file from src to dest
* `less <path>` - View the contents of a file. j, k, /, n are your friends
* `find <path> -name <glob_pattern>` - Search in path for files that match the glob_pattern
* `grep <pattern> <path>` - Search the contents of files at path for the pattern
* `diff <path1> <path2>` - Compare 2 paths for differences
* `history` - View previous commands


Commands that take *path* arguments sometimes have path evaluated by the shell.

Path arguments can be absolute meaning no matter what directory you are in, it will refer to the same file or relative meaning where it refers is based on your current directory.

Absolute paths start with `/` relative start with '.'

`.` is your current directory

`..` is the directory *up* one level higher

If you don't say one or the other `./` is assumed.

## Practice 1

1. make a folder called pets
2. create 5 files: sassy, mittens, garfield, and santas little helper in pets
3. make two folders in pets, cats and dogs
3. move sassy and garfield into cats
4. move santas little helper into dogs
5. mittens is both a dog and cat, so move and then copy the file

How many commands did it take you?

Can you reduce it?


