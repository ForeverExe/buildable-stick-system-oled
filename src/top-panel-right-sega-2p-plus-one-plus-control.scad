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

oled=true;
switch = true;

//change to where you want
oled_x = 70;
oled_y = -70;

module top_panel_right_sega_2p_plus_one_plus_control() {
	difference() {
		top_plate_with_raised_overhang();
		if(!switch){
			sega_2p_plus_one();
		}
		else{
			translate([0, 0,-3.5])
			sw_sega_2p_plus_one();
		}
		rotate([0, 0, 180]) side_chopper();
		if(!switch)
			translate([89, 30, 0]) button_24mm_hole();
		else
			translate([0, 0,-3.5])
			translate([89, 30, 0]) switch_socket_24mm();

		if(oled){
			translate([oled_x, oled_y, -0.5]){
                OLED_Display_pcb();
                OLED_Display_pins();
            }
		}
	}


}

top_panel_right_sega_2p_plus_one_plus_control();
