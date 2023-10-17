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
switch = true;

oled_x = 0;
oled_y = 70;

module top_panel_left_lever_and_dir_arc_w_30mm() {
	difference() {
		union() {
			top_plate_with_raised_overhang();
			translate([(-top_plate_x/2)+55, (top_plate_y/2)-75, -((top_plate_z/2)+(lever_mount_z/2))]) levermountbase();
		}
		if(!switch)
			dir_arc_w_30mm();
		else{
			translate([0, 0,-3.5])
			sw_dir_arc_w_30mm();
		}
		side_chopper();
		translate([(-top_plate_x/2)+55, (top_plate_y/2)-75, 0]) levermountholes();

		if(oled){
            translate([oled_x, oled_y, -0.5]){
                OLED_Display_pcb();
                OLED_Display_pins();
            }
        }
	}
}

top_panel_left_lever_and_dir_arc_w_30mm();
