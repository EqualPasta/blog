---
layout: post
title: 'Software development timesaver #4'
date: '2017-09-18 18:58'
---

Another small git tip, incoming!

Sometimes you commit something, but for some reason immediately regret that decision, and want to undo the commit. There are several reasons for why you want an undo. For me, this can happen when I am doing *GitFlow*, and accidentally commit to the develop branch because I assumed I had created a feature branch, but had not.

To quickly undo the commit, **and** keep your changes, do:

```bash
git reset --soft HEAD^
```

This will undo your latest commit, but keep the index and changes in that commit. You could also drop the *--soft* option. This will leave all changes as unstaged.
And finally, switching from *--soft* to the *--hard* option will remove the latest commit, and its index and changes.
