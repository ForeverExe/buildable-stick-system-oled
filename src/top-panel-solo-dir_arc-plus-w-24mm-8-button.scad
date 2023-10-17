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

//decide whether add a pcb mount
switch=true;
oled = true;

oled_x = -60;
oled_y = -60;

module dir_arc_plus_w_24mm_8_button_panel() {
	difference() {
		top_plate_with_raised_overhang();
		if(!switch){
			translate([-71.5, -top_plate_y/2+122.5, 0]) dir_arc_24mm_8_button_compressed();
			translate([-34.5, 51, 0]) button_24mm_hole();
		}
		else{
			translate([-71.5, -top_plate_y/2+122.5, -3.5]) sw_dir_arc_24mm_8_button_compressed();
			translate([-34.5, 51, -3.5]) switch_socket_24mm();
		}
		if(oled){
			translate([oled_x, oled_y, -0.5]){
					OLED_Display_pcb();
					OLED_Display_pins();
			}
		}
	}
}

dir_arc_plus_w_24mm_8_button_panel();
