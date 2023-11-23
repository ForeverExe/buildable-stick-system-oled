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

// adjustments
hole_tolerance = 0.15;

// M2
m2_screw_selftap_radius = 0.95;

// M3
m3_screw_selftap_radius = 1.3;

// M4
m4_bolt_radius = 2 + hole_tolerance;
m4_bolt_countersink_radius = 6.1 + hole_tolerance;
m4_bolt_hex_exterior_radius = 3.6 + hole_tolerance;

// 24mm button
small_button_radius = 12 + hole_tolerance;

// 30mm button
big_button_radius = 15 + hole_tolerance;

// JLF mount dimensions
lever_mount_x = 53;
lever_mount_y = 95;
lever_mount_z = 2;

// standard lever hole
lever_plate_hole = 12;

// case dimensions
// base frame box. reminder: top of inside (including mounts) is chopped by top_plate_z for plates
frame_x = 233;
frame_y = 208;
frame_z = 55;

// depth of the "lip" of the frame that the top plate sets into/supports the overhang
frame_wall = 4;

// per neutrik (mm)
neutrik_panel_thickness = 3;

// top plate, which can either be the whole plate ("inset") or the mounting frame for a plate that overhangs
top_plate_x = frame_x - (frame_wall * 2);
top_plate_y = frame_y - (frame_wall * 2);
top_plate_z = 5;

// how much the top plate x/y is expanded to overhang the frame
// note that this is relative to the top plate (so the wall is added back)
top_plate_overhang_amount = 8.5;
overhang_top_plate_x = top_plate_x + (frame_wall * 2) + (top_plate_overhang_amount * 2);
overhang_top_plate_y = top_plate_y + (frame_wall * 2) + (top_plate_overhang_amount * 2);

plate_to_frame_point_x = (top_plate_x/2)-10;
plate_to_frame_point_y = (top_plate_y/2)-10;

// frame interior that supports the top plates
panel_support_width = 5;

// neutrik D screw holes
neutrik_d_screw_radius = 1.6 + hole_tolerance;
neutrik_d_radius = 12 + hole_tolerance;

// additional button radius for decorative panels, etc.
decorative_radius_scale = 1.75;
jumbo_decorative_radius_scale = 2;
