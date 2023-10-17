# TODO

Notes for "next time".

## v4

* Engraving some cosmetic stuff? Or maybe a place to mount other plates?
* Try making it so top plates are bolted in from the side of the frame rather than the top
    * I'm thinking of abandoning this, because it makes the frame more complicated to have a portion of a column rather
      than the full column, but I'll keep it here for a bit longer

## Forked V4
- [x] Add a prototype for an oled module to subtract the exact geometry
- [x] Make the oled "selectable", it uses true-or-false IFs, better than making the same panel with 37 variants
  - [ ] Add the oled choice to almost every plate
- [x] Try printing a plate with the plastic pins to see if it works
    - Plastic pins are a nono, if someone wants them so bad, it's better to glue some nuts and use them as posts
- [x] Make a standard hitbox layout for both left and right plates
  - [x] Make the buttons decorative plates

- [ ] Make keyboard switch holes variants
  - [x] Make base keyboard switch module for geometry subtraction
  - [x] Make switch-version for all layouts

* What about using something like door hinges to access the inside? It would not probably need any premade hole, drill it on wherever you want on the plate would be a better option.

## Vx

- [ ] Take a journey into making the case shorter for slimmer builds
    - [x] Make a slimmer profile, aka "shorty frame"
    - [ ] Move the side buttons to the top plates
    - [ ] Resize the USB-B cable connector, 90% sure it'll change to a standard usb-a/c port, need to know if usb-b is needed for the lever
      - [ ] Decide whether to make a cable or plug hole 

- [ ] Take yet ANOTHER journey to try making the files more modular, mostly a series of true or false statements with user-defined constants on the files, like on `top-panel-left-4-button-directions.scad` and `top-panel-left-lever-oled.scad`, or by using module arguments to decide these components blown up demos. This could be a proof for some other future concepts, but I'm running wild with my fantasy for now.
