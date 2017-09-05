---
layout: post
title: "Git Commands So Far"
comments: true
categories:
 -
---

# GIT Commands

The last couple of classes we've talked about how to use git.

- `git clone` - copies a git _repository_ from github (or elsewhere) to our computer
- `git status` - Shows which files have changes and if the changes are ready to be comitted. It also tells us if we have commits we need to `push` or `pull`
- `git log` - Show the history of changes in the repository. You can add a `-p` to see the actual changes, `git log -p`, and you can tell git you wan to view history for a certain branch `git log -p origin/alpha`. You can also show only changes for a certain path `git log -p -- <some_path>
- `git add <path>` - _Stages_ the file(s) given at `<path>` on the git index. We can also use `git add -i` to interactively select files. `git add .` will add all changes in our current directory and any sub directories.
- `git reset` - Take changes off the index so you can re-add them. This _does not_ undo any of the changes to files you've made unless you add `--hard HEAD` to the end.
- `git commit` - Record our changes in git. This command will bring up `vim` where we can write an email to ourself some mpoint in the future. We can redo a commit with `git commit --amend`
- `git push` - Send changes to another git _repository_. If we just say `git push` it assumes we mean `git push origin master`. This says push the changes in our _master_ branch to the `remote` that is pointed to by the shortcut `origin`
- `git pull` - The inverse of push. This says to `pull` the changes from another git repository. Just like with `push` `origin master` is assumed.
- `git help <command>` - Brings up the man page viewer for `<command>`
- `git branch <new_branch_name>` - Starts a new branch 
- `git checkout <branch>` - It's like loading an old game save. It gets the copy of all your files from branch and updates your working copy to match those files.


We can think of git like making a lot of saves on a video game we are playing. Each time we 'save' our game we are making a commit. There can be many copies of the same git repository and we can `pull` and `push` changes to / from them.

When we use [github](https://github.com) we for code to our personal git profile, and then we push and pull from that. We can then create _pull requests_ to send changes back to the repository we forked from.

## Show how to view history of merges

If I do `git log` and see a merge commit I will see something like this

```
commit 6749ac076b2ffa8357405e51c4a5ee5c58dd6e57
Merge: 6f5d645 7e47743
Author: Chris Ortman <chrisortman@users.noreply.github.com>
Date:   Fri Sep 1 08:23:59 2017 -0500

    Merge pull request #12 from OneNobleGnome/master

    learning how to make a commit

```

The _Merge_ line show the two commits that were merged together. I can use this if I need to figure out which k-number goes with which github user.

Here we see that this pull request was merged from github user _OneNobleGnome_

Because the commit message tells me the last commit from _OneNobleGnome_'s repository I can use it to see what they comitted.

```
git log 7e47743

commit 7e4774350811e8ddd91daab132b6ace9de0a4f3e
Author: Jacob Steinman <jacob-steinman@kirkwood.edu>
Date:   Thu Aug 31 13:47:38 2017 +0000

    learning how to make a commit

```

So I know that  Jacob is OneNobleGnome

This will be important in a minute.

# Review / Practice

1. Who was the first person to make a commit after me?
2. What is Andy's k-number?
3. In which branch did I add a new file yesterday? What is the name of the file
4. (not a git question) How can we get a list of all the k numbers sorted alphabetically?
5. Ask the person with the _k-number after yours_ a question by creating a new file in their k folder named `question.txt`. The question should be answered by placing a file called `answer.txt` in the k folder of the person who asked the question. You will need to send a pull request directly to the person when you place the question / answer file. After you receive an answer to your question send a pull request back to the main kirkwood repo. 
