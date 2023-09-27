include <components.scad>

module top_panel_right_hitbox_8_buttons(){
    difference(){
        top_plate_with_raised_overhang();
        translate([30,-30,0])
            //delete "str" if you want the arc of buttons
            str_sega_2p();
    }
}

top_panel_right_hitbox_8_buttons();