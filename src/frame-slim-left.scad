include <components.scad>

module base_left_frame() {
    scale([1,1,0.5]){
        difference() {
            frame();
            // chop the right edge off
            side_chopper();
        }
    }
}

module left_frame() {
	difference() {
		base_left_frame();
//		// connection holes to other frames
//		translate([0, 0, -top_plate_z/2]) frame_connection_holes();
//
//		// cable routing hole
//		translate([0, 0, -top_plate_z/2]) frame_cable_routing_hole();
//
//		// aux button holes
//		translate([-30, 101.5, 0]) rotate([270, 0, 0]) button_24mm_hole();
//		translate([-30, (frame_y/2)-neutrik_panel_thickness-4, 0]) frame_cutout();
//		translate([-70, 101.5, 0]) rotate([270, 0, 0]) button_24mm_hole();
//		translate([-70, (frame_y/2)-neutrik_panel_thickness-4, 0]) frame_cutout();
//		translate([10, 101.5, 0]) rotate([270, 0, 0]) button_24mm_hole();
//		translate([10, (frame_y/2)-neutrik_panel_thickness-4, 0]) frame_cutout();
//
//		// neutrix button hole
//		translate([70, (frame_y/2)-neutrik_panel_thickness, 0]) rotate([90, 0, 0]) neutrik_d_mount();
//		translate([70, (frame_y/2)-neutrik_panel_thickness-4, 0]) frame_cutout();
	}
}

left_frame();
