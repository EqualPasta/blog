---
layout: post
title: Learning game development progress report
date: '2017-06-13 18:29'
---

I started looking at Unity around March of this year, and I though I could share what I've done since then. This includes learning resources, projects and so on.

The first thing I did was follow some of the tutorials provided by Unity. The videos are pretty good and easy to follow. I usually watched them at a speed of 1.5, and repeated what I watch in a Unity project. However, I often had to pause a video and reference the upgrade pdf guide, since the tutorials were made with Unity 4.x and I had Unity 5.x. You do get a good overview of Unity by doing these tutorials, so I would recommend you do them when you start out.

* [Roll-a-ball](https://unity3d.com/learn/tutorials/projects/roll-ball-tutorial)
* [Space Shooter](https://unity3d.com/learn/tutorials/projects/space-shooter-tutorial)
* [Survival Shooter](https://unity3d.com/learn/tutorials/projects/survival-shooter-tutorial)

You can see the list of tutorials I did initially, over a span of a couple weeks. There are other tutorials available, but I skipped the 2D ones, and felt that the rest were more aimed at learning how to do Unity for specific genres of games.

After watching these tutorials, Unity seemed almost easy. So I decided to make a small game from scratch. Unfortunately, the tutorials gives you some false sense of confidence. It's much harder when there isn't a guiding voice, commanding your every movement in Unity. You can get overwhelmed quickly. It's, therefore, important to start small and iterate. To do that I decided on a game which would be maybe a tad easier to make.

* A golf ball (No character animations)
* Single player
* Free assets from the Unity Store (No 3D modelling)
* Choose a subset of Unity to focus on:
  * How to make a UI
  * How to use a game controller as input
  * How to do physics. RigidBody, Force, Colliders
  * How do a simple game loop

Basically, learning by doing. This may not be as straight forward as doing tutorials, but you'll learn more. In addition you will learn a habit of visiting the [Unity documentation](https://docs.unity3d.com/Manual/index.html) and googling issues your having.

I've since extended the game further by adding new features in order to try out other areas of Unity. You can probably guess that this have made my scripts messy and harder to maintain. However, this also gives you an excuse to learn more about how to better structure your code. For instance, I've found some of the video on this [YouTube channel](https://www.youtube.com/channel/UCifiUB82IZ6kCkjNXN8dwsQ) helpful. I've extended the game by implementing the following:

* Local multiplayer game (Couch gaming setup) with 4 players
* Transition between scenes (Player selection scene to game scene)
* Transfer data between scenes
* A more advanced game loop
* Music and sounds
* Input scheme for 4 game controllers
* Random spawn points for players
* Instantiate prefabs in scene
* Tweaked around with physics
* More advanced camera. Set new targets, rotate camera and zoom.

![Golf game]({{ site.url }}/assets/game-dev-progress-report.png)

Lately, I've been trying to learn 3D modelling in Blender, because the *not-so-small-anymore* game requires some custom 3D props now. This is an almost new area for me, at least Blender is. Again I started by doing some tutorial videos on YouTube, but found them not helpful at all. Blender is confusing, especially when you start off with tutorials that assume some existing knowledge of blender's layout and shortcuts. I therefore, bought a heavily discounted Blender course at [Udemy](https://www.udemy.com/blendertutorial/learn/v4/overview). This is a comprehensive course, and contains, like, 48 hours of material. So, making a couple of simple 3D props, quickly evolved to a much bigger project.

That's the current status on what I've done so far in learning game development. Time consuming hobby...
