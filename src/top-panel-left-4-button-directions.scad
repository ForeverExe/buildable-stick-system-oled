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
switches = true;

oled_place_x = -70;
oled_place_y = 70;

module top_panel_hitbox_directions(){
    difference(){
        difference(){
            top_plate_with_raised_overhang();
                if(!switches)
                    translate([-36, 30,0])
                    dir_arc_24mm_directionals();
                else
                    //it should give 1.5 mm thickness to lock it in place
                    translate([27, 30,-3.5])
                    switch_hole_4_directionals();
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

//projection() translate([0,0,0]) rotate([0,0,0])
top_panel_hitbox_directions();