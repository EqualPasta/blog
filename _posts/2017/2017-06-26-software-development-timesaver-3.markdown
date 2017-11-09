---
layout: post
title: 'Software Development Timesaver #3'
date: '2017-06-26 22:32'
---

![Expanded build folder](/assets/2017/software-development-timesaver-3/expanded-build-folder.png)

If you're on Windows computer and using Atom, you might have encountered this error in your terminal, when running `gulp watch`:  
```
Error: EPERM: operation not permitted, unlink 'C:\user\equalpasta\somepath\project\build'

```
A Google search reveals that variations of this error are a [common problem](https://github.com/npm/npm/issues/12059).

Why does this happen? How to fix it? One reason can be the Atom editor. Turns out having the build folder expanded in Atom can cause this. It seems like Atom locks the folder if expanded in the project view, when running `gulp watch`.

**Minimize the build folder in Atom, and re-run 'gulp watch'.**

This solved the issue for me.
