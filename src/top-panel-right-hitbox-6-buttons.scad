include <components.scad>
switches = true;

module top_panel_right_hitbox_8_buttons(){
    difference(){
        top_plate_with_raised_overhang();
        if(!switches)
                    str_sega_2p();
        else{
            //it should give 1.5 mm to lock it in place
            translate([-60, 20,-3.5])
                 switch_hitbox_8_buttons();
        }
    }
}

top_panel_right_hitbox_8_buttons();