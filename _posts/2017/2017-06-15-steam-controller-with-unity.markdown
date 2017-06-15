---
layout: post
title: Steam controller with Unity
date: '2017-06-15 21:51'
---

My current Unity game is a 4 player couch game. It's a turn based ball game, where each player tries to knock another player's ball into a hole. Whose turn it is to control the ball is of course decided by a virtual match of rock paper scissor. The input device each player will use is therefore a game controller. Unfortunately, I only have Steam controllers, which turned out to be a bit harder to use with the Unity Editor, because the Steam controller works best within the Steam application. It is, however, possible to make them work as gamepads inside the Unity Editor.

*The trick is to add Unity as a non-Steam game to your Steam library.*
<br/>
<br/>
## Use Steam controller in Unity Editor recipe
### 1. Add Unity to your Steam library
* Open Steam
* Find Games in the Menu bar.
* Click `Add a Non-Steam Game to My Library...`

![Add non-steam game to Steam](/assets/2017/steam-controller-with-unity/steam-add-game.png)

* A browser will appear. Here you can either scroll to find Unity in the list of programs, or browse to find Unity. On Windows, Unity is often located at `C:\Program Files\Unity\Editor\Unity.exe`

![Add Unity to library](/assets/2017/steam-controller-with-unity/steam-add-library.png)
<br>
## 2. Configure the Steam controller
* After you've added Unity to your Steam library, open `Big Picture`.
* Make sure your Steam controller is on, and connected to Steam.
* Find Unity in the library, and open it.
* Then, open `Controller Configuration`

![Start Unity from Steam library](/assets/2017/steam-controller-with-unity/steam-controller-configuration.png)

* Change the controller configuration to `Gamepad`. The configuration can be found in `Templates`.

![Start Unity from Steam library](/assets/2017/steam-controller-with-unity/gamepad-configuration.png)
<br>
## 3. Open Unity from Steam
* Then you're done. You are now able to use your Steam Controller as a regular joystick input device inside the Unity Editor. Just remember to open Unity from your Steam library.


![Steam Unity demonstration](/assets/2017/steam-controller-with-unity/demo.gif)
