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

switch = true;
oled = true;
oled_x = -60;
oled_y = 60;

module top_panel_middle_dir_arc_w_30mm() {
	difference() {
		top_plate_with_raised_overhang();
		if (!switch)
			dir_arc_w_30mm();
		else
			translate([0, 0,-3.5])
			sw_dir_arc_w_30mm();
		if (oled){
			translate([oled_x, oled_y, -0.5]){
                OLED_Display_pcb();
                OLED_Display_pins();
            }
		}
		rotate([0, 0, 180]) side_chopper();
		side_chopper();
	}
}

top_panel_middle_dir_arc_w_30mm();
