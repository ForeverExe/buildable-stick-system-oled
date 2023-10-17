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

/////change as desired//////
switch = true;
oled = true; //better use the 0.96'' measures if you want to put it in there

oled_x = -10;
oled_y = 75;
///////////////////////////

module top_panel_solo_lever_and_sega_2p_6_button() {
	difference() {
		// base plate
		union() {
			top_plate_with_raised_overhang();
			translate([-60, 18, -((top_plate_z/2)+(lever_mount_z/2))]) levermountbase();
		}
		if(!switch){
			translate([95, -20, 0]) sega_2p_6_button();
		}else
			translate([95, -20, -3.5]) sw_sega_2p_6_button();

		translate([-60, 18, 0]) levermountholes();

			if(oled){
				translate([oled_x, oled_y, -0.5]){
						OLED_Display_pcb();
						OLED_Display_pins();
				}
			}
		}
		
	}

top_panel_solo_lever_and_sega_2p_6_button();
