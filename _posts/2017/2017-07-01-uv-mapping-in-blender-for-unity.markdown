---
layout: post
title: UV Mapping in Blender for Unity
date: '2017-07-01 21:02'
---

Just learned how to do UV mapping in Blender, and thought I should write it down before I forget.
Currently, I'm doing the [Learn 3D Modelling course](https://www.udemy.com/blendertutorial/) at Udemy. I'm now past the basic modelling stuff, and wanted some practice. I decided to do a chessboard, and yup, you guessed it, not that challenging since it's basically a square shape. It does not look anything like a chessboard, without the checker pattern.

![No texture](/assets/2017/uv-mapping-in-blender-for-unity/notexture.png)

So I decided to try out UV map painting, to see if I could turn this nondescriptive shape into a bona fide chessboard.

<br />
## UV mapping in Blender recipe
### 1. Adding seams
* The 3D model is complete and texturing is the next step. Your first step is to create seams to help Blender unwrap your model's surface onto a flat plane. The plane area is where you'll do the painting later on.
* Enter edit mode `<TAB>`
* Open the tools section in the left sidebar `<T>` of the 3D View
* Pick edge select mode to select seams on your model.

![Edge select](/assets/2017/uv-mapping-in-blender-for-unity/edgeselect.png)

* Select edges that you want to convert to a seam. A loop selection of edges will create a disconnected island, which is good, when organizing the UV map later on. Create several of these. For instance, the chessboard was split by 4 seams. Top, bottom and two of the sides.

![Selection edges for seam](/assets/2017/uv-mapping-in-blender-for-unity/seamselect.png)
  * To create the seam, scroll down in the `Shading/UVs` section of the tools side panel, and make a seam when you are satisfied with an edge selection. You will find a button called `Mark Seam`.

![UVs panel](/assets/2017/uv-mapping-in-blender-for-unity/uvuipanel.png)

* After you've created some seams, select the entire model in edit mode by pressing `<A>`. Then, click `Unwrap`.Again, click `Unwrap` in the drop down which will appear immediately after.

![Seams](/assets/2017/uv-mapping-in-blender-for-unity/seams.png)

<br />
### 2. Clean the UV map
* Open a `UV/Image Editor` View. You will probably see something similar to this:

![UV map](/assets/2017/uv-mapping-in-blender-for-unity/uvmap.png)

* To see if all the face sections are disconnected, use the `island UV selection` tool. Right click on each face and see if only that face section is highlighted.

![Island UV selection tool](/assets/2017/uv-mapping-in-blender-for-unity/island.png)

* As you can see, two of the faces are still connected. To separate them select all the polygons of one section using the `UV face selection` tool and press the `<Y>` key. Use the grab tool `<G>` to see if the area is separated. More details [here](https://blender.stackexchange.com/questions/3317/separate-selected-uv-map-vertices-from-surrounding-vertices).

* Then, reorganize the UV map by rotating, scaling and moving UV islands. The shortcuts are `<R>`, `<S>`, and `<G>` key, respectably.

![Island UV selection tool](/assets/2017/uv-mapping-in-blender-for-unity/reorganized.png)

<br />
### 3. Create the texture and UV layout image
* Go to the `Texture` tab. Create a new texture.
* Change `Type` from *none* to *Image or Video*
* In the `Image` section, click new. Create a new image with width and height of 2048 and select a white color. Give it a sensible name. For instance, **chessboardtex**.
* Then, in the `Mapping` section, change `Coordinat` to *UV* , and find the UV map in the `Map` drop down.
* Go to the `UV/Image Editor`, select **chessboardtex** in the menu that appears after clicking the image icon in the toolbar. The white texture image will appear in the background of the UV map.

![Select texture](/assets/2017/uv-mapping-in-blender-for-unity/selecttexture.png)

* The `Image` menu item now has an asterisk. This is because you have not saved the image yet. Use the `Save As Image` option.
* If you want to do the UV paining in an external program, such as Photoshop or Gimp, you'll probably want the UV layout as a reference when painting. Press `UVs` and in the menu, select `Export UV layout`.

<br />
### 4. UV paining
* Open an image editor (Photshop, Gimp or similar). Add the saved texture image and the UV layout image on top, in a new layer.

![Before paining](/assets/2017/uv-mapping-in-blender-for-unity/UVpaining.png)

* Go wild painting. Below is my finished chessboard texture.

![Before paining](/assets/2017/uv-mapping-in-blender-for-unity/uvfinished.png)

* In Blender's `UV/Image Editor`, go `Image` and press `Reload image`, to see the updated texture on your 3D model.

### 5. Add model to Unity
* When you're satisfied with the result you can save the model as a .blend file somewhere in the assets directory of your Unity project.

* But where did the texture of the model go in Unity? Remember to copy the texture image into the Assets folder. You need to tell Unity to use the image for the model. I'm not sure if there is a better way of combining the texture and model into a single file, but the following seems to work fine.
* Adjust the material settings on your model. For instance, pick the `Mobile/Bumped Diffuse` shader, and select the imported texture image under `Base (RGB)`.

![Before paining](/assets/2017/uv-mapping-in-blender-for-unity/unity.png)

<br />
You now have a textured model in Unity.

### References
[Separate vertices](https://blender.stackexchange.com/questions/3317/separate-selected-uv-map-vertices-from-surrounding-vertices)

[Exporting & Editing UV Maps](https://www.youtube.com/watch?v=jdt_e78Dd64)
