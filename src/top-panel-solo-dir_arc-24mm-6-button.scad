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
pico = false;
oled_x = -60;
oled_y = 60;

module dir_arc_24mm_6_button_panel() {
	difference() {
		top_plate_with_raised_overhang();
		translate([-55,0,0])
		if(!switch)
			dir_arc_24mm_6_button();
		else{
			translate([0, 0,-3.5])
			sw_dir_arc_24mm_6_button();
		}
		if(oled){
			translate([oled_x, oled_y, -0.5]){
					OLED_Display_pcb();
					OLED_Display_pins();
			}
		}
	}

	if(pico)
		pico_mount();
	else{
		translate([-50,-50,-6])
		pcb_mount();
	}
}

dir_arc_24mm_6_button_panel();
