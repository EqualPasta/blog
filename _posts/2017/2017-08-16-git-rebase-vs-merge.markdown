---
layout: post
title: Git rebase vs. merge
date: '2017-08-16 19:29'
---

I've used git for version control for a good while now, but I've never really tried to understand the difference between merging and rebasing. I guess I'm a bit lazy that way, having a "If it works, it works" mentality.  I've now spent some time figuring out the difference, and try making a short and understandable post about it.

<br />
## The difference
Both commands, `git rebase` and `git merge`, solves the same problem. Taking changes from one branch and integrating them into another. The difference happens in how changes are spliced together.

A typical use case is having a *master* and a *feature* branch. You want the changes from the master into the feature branch. Doing the `git merge master` command from the feature branch will create a new merge commit in your feature branch. A merge is basically a **new** commit, with two parents.

![Git merge](/assets/2017/git-rebase-vs-merge/git-merging.png)

Whereas, rebasing will put the *feature* branches' changes onto the *master* branch. The  `git rebase master` will effectively move the commits to the tip of the *master* branch. Another way of looking at it is that you are relocating the place where you branched out from master to a more recent place in master's history. In addition, a rebase will for every commit in *feature* create a **new identical** commit on top of *master*.

![Git rebase](/assets/2017/git-rebase-vs-merge/git-rebasing.png)

<br />
## Advantages and disadvantages of rebasing
* Cleaner history that is easier to read.
* Slightly harder than merging.
* Rewrites the commit history. which might be problematic.
* You can't see when changes from *master* were incorporated into *feature*.
* Gives you the ability to use interactive rebasing. You can remove intermediate backup commits and replace it with a single commit. You can also reword your commit messages.
* Maybe the best way to incorporate changes another developer made on master onto your feature branch.

<br />
## Advantages and disadvantages of merging
* Merging is a non-destructive operation
* Each merge creates a commit, which might clutter the branches' history.
* Traceability. You have a merge commit, which indicates that a convergence between two branches has taken place.


Finally, I would like to point out that the explanation above might be incorrect. It's based on my current understanding of git. And I'm by no means a git wizard. Please read the references below to get a more thorough explanation.

## References
[Atlassian git tutorial](https://www.atlassian.com/git/tutorials/merging-vs-rebasing)
<br />
[Stackoverflow answer](https://stackoverflow.com/questions/804115/when-do-you-use-git-rebase-instead-of-git-merge)
<br />
[Blog post explaining the difference well](http://five.agency/git-merge-and-rebase-the-simple-explanation/)
