---
layout: post
title: 'Making a Bluetooth Numpad. Part 3: Enclosure'
date: '2017-11-24 20:04'
---

First, electronics, then software, and now woodworking. No wonder making a custom keyboard can be this exciting. In this part you will find mostly pictures of the process, including some remarks. Then, I'll do a small conclusion of what worked and areas that can be improved upon.

<br>
## Procuring Materials and Equipment
Not done much woodworking before, so I had to buy most of the tools and materials. I did manage to borrow a table saw and a miter saw. Below I'll list everything:

**Tools**
* Table saw (borrowed)
* Miter saw (borrowed)
* [Dremel (bought)](http://www.dremeleurope.com/general/en/dremel%C2%AE3000-6013-ocs-c/)
* [Router attachment for dremel (bought)](https://www.dremel.com/en_US/products/-/show-product/tools/335-01-plunge-router-attachment)
* Cordless drill (already owned)
* Twist drill bits set (bought)
* Hot glue gun (already owned)
* Clamps (bought)

**Materials**
* Oak plank (bought)
* Wood glue (bought)
* [Osmo 3062 Clear hardwax-oil (bought)](http://www.osmouk.com/sitechapter.cfm?chapter=82&page=247)
* Brass screws (bought)
* Electrical tape (aldready owned)

<br>
## Cutting the Frame
Unfortunately I lost the photos taken during the frame cutting. Basically, I scribbled some measurements on paper based on length and width of the metal plate. I adjusted the measurements to allow the plate to be inserted in a 2-3 mm groove in the frame.

The thickness of the oak plank will also influence these measurements. I only managed to find an oak plank that was 1,8 cm deep.

 Finally I had to decide how deep the box should be. I ended up with 3 cm, which left some room for the lid.

![Enclosure planning](/assets/2017/making-a-bluetooth-numpad-part-3/enclosure-plan.JPG)

 As you can see from the scribbles, I'm not that good at planning. Had to do some improvisation along the way.

I used the table saw to cut apart a 3cm piece from the oak plank. Then, I cut a 0.9 cm groove along an edge with the table saw. This will allow the lid to be flush with the frame.

![Frame pieces](/assets/2017/making-a-bluetooth-numpad-part-3/frame-in-pieces.JPG)

With the measurements tweaked and finalized, I cut the fairly long piece of wood with the miter saw on a 45 degree angle.

This was not easy to get right. The wood was hard to cut, and I got a lot of tearout. I added some electrical tape to reduce this.

![Frame](/assets/2017/making-a-bluetooth-numpad-part-3/frame.JPG)

To create the lid I cut a really thin 0.4 cm piece from the oak plank. This piece was then parted into fitting lengths. Later these thin pieces were glued together, forming the lid.

![Lid](/assets/2017/making-a-bluetooth-numpad-part-3/lid.JPG)

 <br>
## Metal plate groove
This is the reason why I bought a dremel and a router attachement. I needed some extra precision to carve out the grooves.

I tested the router attachment first on a discarded piece of oak to get a feel of the device, and how to use it.

![Test of router](/assets/2017/making-a-bluetooth-numpad-part-3/testing-router.JPG)

![Router attachment](/assets/2017/making-a-bluetooth-numpad-part-3/router.JPG)

![Test groove](/assets/2017/making-a-bluetooth-numpad-part-3/after-test.JPG)

Unfortunately, I forgot to buy proper router bits for the dremel so I went over the wood in several passes with a bit that looked router-y. I clamped down the remainder of the oak plank and a discarded frame piece to my kitchen dinner table to keep the frame pieces from moving when cutting the groove. Luckily, it worked out well!

![Finished grooves](/assets/2017/making-a-bluetooth-numpad-part-3/groove-carved.JPG)

This allowed me to test the fit of the frame. Not a perfect fit, but good enough.

![Testing fit](/assets/2017/making-a-bluetooth-numpad-part-3/testing-frame.JPG)

<br>
## Drilling holes for the USB and Switches
In one of the frame pieces I had to droill three holes. Two for the switches and one for the USB. The frame is pretty thick, so this meant a lot of carving and drilling. This was also a bit nerve wracking, since any errors would most likely be very visible, and could result in me having to cut a new piece.

First, I marked the spot where I would drill a 10 mm hole about halfway in. I used a nail with some tape to ensure I would not drill to far in.

![Nail with tape](/assets/2017/making-a-bluetooth-numpad-part-3/nail-measurer.JPG)

![Testing depth with nail](/assets/2017/making-a-bluetooth-numpad-part-3/nail-testing.JPG)

![Drilled switch holes](/assets/2017/making-a-bluetooth-numpad-part-3/drilled-holes.JPG)

Then I switched from a 10 mm bit to a 6 mm bit and drilled all the way through. The neck of the switches is threaded and can be secured with a small fastener.

![Drilling through the frame piece](/assets/2017/making-a-bluetooth-numpad-part-3/drilling-through.JPG)

![Backside of piece showing 6 mm hole](/assets/2017/making-a-bluetooth-numpad-part-3/backside.JPG)

![Testing fit of switches](/assets/2017/making-a-bluetooth-numpad-part-3/testing-hole-fit.JPG)

As you can see in the picture above, the threaded neck was not long enought to fasten on the other side. This meant I had to carve out an area from the inside of the wood piece. In the picture below a 10 mm hole for the USB connector has also been drilled. The router attachment came in handy here as well.

![Cutting out an area to reduce the depth of the frame](/assets/2017/making-a-bluetooth-numpad-part-3/hole-carved.JPG)

Finally I did a lot a sanding of all the pieces, including the lid.
![Sanding](/assets/2017/making-a-bluetooth-numpad-part-3/sanding.JPG)

![Sanding lid](/assets/2017/making-a-bluetooth-numpad-part-3/sanding-lid.JPG)

 I also added some electrical tape to separate the hand-wiring from the MCU.

![Layer between matrix and MCU](/assets/2017/making-a-bluetooth-numpad-part-3/electrical-tape.JPG)

<br>
## Gluing the Mess Together

First, I glued a small piece of wood to close of the hole in the metal plate.

![Hole in metal plate](/assets/2017/making-a-bluetooth-numpad-part-3/hole-in-metal-plate.JPG)

The lid had to be glued together.
![Gluing lid](/assets/2017/making-a-bluetooth-numpad-part-3/glueing-lid.JPG)

I, of course (did not almost forget), to test that the numpad still worked before gluing the frame to it. Testing numpad by connecting it to a computer and verified that all keys still worked using [keyboardTester.com](http://www.keyboardtester.com/). The F13 and up keys were tested at this [site](https://www.w3.org/2002/09/tests/keys.html).

![Testing numpad one final time](/assets/2017/making-a-bluetooth-numpad-part-3/testing-numpad-before-glueing.JPG)

The switches and the USB was fastnened to the top piece. Hot glue was used for the USB connector.

![Switch and connector](/assets/2017/making-a-bluetooth-numpad-part-3/switch-and-connector.JPG)

![Top piece with components](/assets/2017/making-a-bluetooth-numpad-part-3/top-piece.JPG)

![Hot gluing](/assets/2017/making-a-bluetooth-numpad-part-3/hot-glue.JPG)


![Testing usb connector](/assets/2017/making-a-bluetooth-numpad-part-3/testing-usb.JPG)

Then, a final test of the frame. It fit, but not perfectly. Some gaps. Might have appeared because I sanded all the 45 degree surfaces. I probably should have avoided that.

![Testing frame](/assets/2017/making-a-bluetooth-numpad-part-3/testing-frame-before-glueing.JPG)

Applied wood glue to all 45 degree angled surfaces. Should have used tape here to avoid glue squeeze out. But forgot, of course.

![Applying glue](/assets/2017/making-a-bluetooth-numpad-part-3/glue.JPG)

![Clamps](/assets/2017/making-a-bluetooth-numpad-part-3/clamps.JPG)

![After glue had dried](/assets/2017/making-a-bluetooth-numpad-part-3/glued-dried.JPG)

<br>
## Finishing Touches
I noticed that the frame had pretty large gaps after the glue had dried overnight. I made some wood filler by mixed some of the  sawdust with glue, and tried to fill in the gaps.

![Gap](/assets/2017/making-a-bluetooth-numpad-part-3/gap.JPG)

![Wood filler](/assets/2017/making-a-bluetooth-numpad-part-3/wood-filler.JPG)

![Dried wood filler](/assets/2017/making-a-bluetooth-numpad-part-3/dried-wood-filter.JPG)

I glued the metal plate to the frame with hot glue.
![Hot gluing to metal plate to frame](/assets/2017/making-a-bluetooth-numpad-part-3/metal-to-frame.JPG)

Coated the frame and lid with hardwax oil. Did that twice.
![Coating wood enclosure with oil](/assets/2017/making-a-bluetooth-numpad-part-3/oil.JPG)

<br>
## Securing the Lid
After gluing and coating the frame and lid, the final thing left to do was securing the lid to the bottom of the frame.

![After second coat](/assets/2017/making-a-bluetooth-numpad-part-3/coat2.JPG)

I drilled 3mm pilot holes in the lid and down into the frame. Done to prevent wood from cracking, and since the screws are really close to the edge of the lid and the frame.

![Drilling holes for lid screws](/assets/2017/making-a-bluetooth-numpad-part-3/lid-screw-holes.JPG)

![brass screw](/assets/2017/making-a-bluetooth-numpad-part-3/with-screw.JPG)

Furthermore, I had to sand away a bigger diameter around the holes to make the screw heads flush with the lid surface.

![Lid secured](/assets/2017/making-a-bluetooth-numpad-part-3/lid-on.JPG)


Found some adhesive rubber feet lying around, so I applied them to the bottom of the numpad. The device is finished. In it's final form. The only thing missing now is adding some key caps to it.

![Rubber feet](/assets/2017/making-a-bluetooth-numpad-part-3/rubber-feet.JPG)

The key caps came in the mail a week after. Ordered them from AliExpress.
![Key caps](/assets/2017/making-a-bluetooth-numpad-part-3/key-caps.JPG)

![Key caps](/assets/2017/making-a-bluetooth-numpad-part-3/finished-1.JPG)
![Key caps](/assets/2017/making-a-bluetooth-numpad-part-3/front2.JPG)
![Key caps](/assets/2017/making-a-bluetooth-numpad-part-3/finished-2.JPG)

A short video of the device in action, can be found [here](https://www.youtube.com/watch?v=4i62P4UA_ms).

## Conclusion
In conclusion, I would say the numpad is functional. It works. However, there are a lot of things that could have been improved.

* First, the software is a bit unfinished. For instance, handling a press-and-hold of a key. I might do that in the future. Or somehow use existing keyboard software ported to Arduino.

* The frame is also a bit wide for my taste. Originally, I aimed at an 1 cm wide frame, but had to later adjust since I did not find any oak material with that thickness.

* Not sand the angled surfaces, or be more careful when doing that.

* Adding a blue led to indicate if the numpad is in USB or Bluetooth mode would have been nice to have.

* I could also have removed the switch that switch between USB and Bluetooth. This could have been done with a special numpad key combo that I could include in the software.

Including the tools and material bought to do this project, it is one expensive numpad! However, can't set a price on having fun. Plus, productivity in Excel will go through the roof with this device!
