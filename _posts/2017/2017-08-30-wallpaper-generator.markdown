---
layout: post
title: Wallpaper Generator
date: '2017-08-30 22:49'
---

I've been using two monitors for about two years now, and there are a lot of great wallpapers that are made for a dual monitor setup. Recently, I saw a low-poly wallpaper that I liked, and wanted something similar. The problem: How to find a colorful low-poly image with the correct resolution. So I've made a small tool that can generate low-poly wallpapers in custom resolutions, and it runs in the browser. It used the JS library, [Trianglify](https://qrohlf.com/trianglify/), which can generate SVG backgrounds.

In the tool you can customize the result by setting a variance and size of the triangles in the generated SVG image. You can split the wallpaper into several chunks, change the color scheme, and download the wallpaper as a PNG image.

![Generator](/assets/2017/wallpaper-generator/wallpaper-generator.png)

Another project I might do in the future, is to extend this generator by creating a custom version of *Trianglify*.

The tool can be found at [here](http://unuseful.net/polygon-wallpaper/).
