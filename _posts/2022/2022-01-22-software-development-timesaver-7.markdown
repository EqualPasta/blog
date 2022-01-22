---
layout: post
title: 'Software Development Timesaver #7'
date: '2022-01-22 14:30'
---

Often nowadays on GitHub you get these *Dependabot alerts*, and if you're using *Node* you often have a vulnerability far down the dependency hierarchy. It is not that easy to assert just from the alert alone which dependency of your project that actually depends on the vulnerable dependency in question.

![Dependabot alert](/assets/2022/software-development-timesaver-7/dependabot-alert.png)

There is a [handy command](https://docs.npmjs.com/cli/v8/commands/npm-ls) you can use for this:

`npm ls <package_name>`


For example, in the case of **follow-redirects** you get this output that clearly shows that **follow-redirects** is used by **webpack-dev-server** in your project:

```
λ npm ls follow-redirects
a-project@0.0.1 C:\Projects\a-project
└─┬ webpack-dev-server@4.7.1
  └─┬ http-proxy-middleware@2.0.1
    └─┬ http-proxy@1.18.1
      └── follow-redirects@1.14.6
```





