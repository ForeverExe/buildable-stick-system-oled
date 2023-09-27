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

module dir_arc_plus_w_30mm_decorative_plate() {
	difference() {
		// get a 1mm slice of the bigger button cylinders
		translate([0, 0, -45]) dir_arc_w_24mm();
		translate([0, 0, -50]) cube([500, 500, 98], center=true);
		translate([0, 0, 50]) cube([500, 500, 98], center=true);
		// cut out the normal holes
		translate([0, 0, -1]) dir_arc_w_24mm();
	}
}

dir_arc_plus_w_30mm_decorative_plate();
