---
layout: post
title: 'Software development timesaver #1'
date: '2017-06-14 18:16'
---

Thought I might share some practical software development tips and tricks once in a while. This can be things I've recently discovered and found neat, or things I use daily at work.

Today's timesaver I actually discovered not too long ago. Something I've managed to miss. In Git, if you do `git add -A`, Git will stage all the changes you've made. However, if you then want to see the changes you've made, you can't simply do `git diff` afterwards. This only works for unstaged files. To look at the staged diff you can do:

```bash
git diff --staged
```
