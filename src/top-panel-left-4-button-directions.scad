/* Copyright Brian Stephan 2023
 *
 * This file is part of the Buildable Stick System.
 *
 * The Buildable Stick System is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by the
 * Free Software Foundation, either version 3 of the License, or (at your
 * option) any later version.
 *
 * The Buildable Stick System is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * the Buildable Stick System. If not, see <https://www.gnu.org/licenses/>.
 */

include <components.scad>

oled = true;
oled_pins = true;
switches = true;

module top_panel_hitbox_directions(){
    difference(){
        difference(){
            top_plate_with_raised_overhang();
                if(!switches)
                    translate([-36, 30,0])
                    dir_arc_24mm_directionals();
                else
                    //it should give 1.5 mm to lock it in place
                    translate([-36, 30,-3.5])
                    switch_hole_4_directionals();
        }  
        if(oled){
            //change to hearts content
            translate([-70, -10, -0.5]){
                OLED_Display_pcb();
                if(!oled_pins)
                    OLED_Display_pins();
            }
        }
    }
            if(oled_pins){
                translate([-70, -10, -1.8])
                OLED_Display_pins();
            }
}

top_panel_hitbox_directions();