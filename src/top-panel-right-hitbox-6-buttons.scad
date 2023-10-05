include <components.scad>
switches = true;
oled = true;
oled_place_x = 70;
oled_place_y = 70;

module top_panel_right_hitbox_8_buttons(){
    difference(){
        top_plate_with_raised_overhang();
        if(!switches)
                    str_sega_2p();
        else{
            //it should give 1.5 mm to lock it in place
            translate([-95, 20,-3.5])
                 switch_hitbox_8_buttons();
        }

        if(oled){
            //change to hearts content
            translate([oled_place_x, oled_place_y, -0.5]){
                OLED_Display_pcb();
                OLED_Display_pins();
            }
        }
        
        
    }
}

top_panel_right_hitbox_8_buttons();