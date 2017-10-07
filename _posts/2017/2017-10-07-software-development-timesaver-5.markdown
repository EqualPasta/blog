---
layout: post
title: 'Software development timesaver #5'
date: '2017-10-07 14:06'
---

At work we develop user interfaces with Windows Forms. You typically drag and drop components in a visual designer, which generates a designer file. Collaborating with others can be difficult, especially if you work on the same UI elements. If you're not careful, you'll end up with a designer file covered in merge conflicts. And since it is automatically generated it is really a pain to solve them. Furthermore, sometimes you know that your file is a 100% correct, and potential merge conflicts in that file could just be ignored.


So, you are in the middle of a merge or rebase and suddenly a conflict infested designer file appears. You would rather just ignore this file, and fix it after the merge is complete. What to do? Luckily, *git* has an easy command for you! It simply ignore the merge conflicts, and instead picks a file from one of the branches involved in the merge/rebase.

```
git checkout --ours project/ui.designer.cs
git checkout --theirs project/ui.designer.cs
```

The flags, `--ours` and `--theirs`, control which *ui.designer.cs* file to pick. There exists two, one in each branch, they are different, and you want only one of them. Unfortunately, the flags switch role depending on whether you are rebasing or merging... I always get confused by this... So to illustrate the difference clearly, let us say that, for instance, you have a **feature** and a **master** branch. Then the flags will do the following:

## Merging master with feature
```
git checkout feature
git merge master
```
* `--ours` - Picks file in feature
* `--theirs` - Picks file in master

## Rebasing feature onto master
```
git checkout feature
git rebase master
```
* `--ours` - picks file in master
* `--theirs` - picks file in feature
