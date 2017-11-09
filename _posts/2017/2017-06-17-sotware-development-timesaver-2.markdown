---
layout: post
title: 'Software Development Timesaver #2'
date: '2017-06-17 12:55'
---

Command-line interface shortcuts can be real timesavers. I use the [Atom text editor](https://atom.io/) frequently for projects, or changing text files. It's fast and versatile. If you're using Git from your command-line interface, this tip can save you some time opening Atom to the correct project directory.

Basically, if you usually navigate around your file system using command-line, having a way to open Atom to your working directory would be great. This will save you time, since you avoid having to deal with navigating in the pesky GUI file dialog.

Simply, `cd` into the folder you want opened in Atom, and write:
```
atom .
```

That's all. Atom will start and have every file and subdirectory available in the left-hand-side *Project view*. Furthermore, you can also open a file in Atom with the same method, by replacing the dot with a path to a file. For instance `atom ./example.txt`.
