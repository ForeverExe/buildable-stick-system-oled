include <components.scad>

module base_middle_frame() {
    scale([1,1,0.5]){
        difference() {
            frame();
            // chop the left and right edge off
            side_chopper();
            mirror([1, 0, 0]) side_chopper();
        }
    }
}

module middle_frame() {
	difference() {
		base_middle_frame();
		// connection holes to other frames
		//translate([0, 0, -top_plate_z/2]) frame_connection_holes();
		//translate([0, 0, -top_plate_z/2]) mirror([1, 0, 0]) frame_connection_holes();

		// cable routing holes
		//translate([0, 0, -top_plate_z/2]) frame_cable_routing_hole();
		//translate([0, 0, -top_plate_z/2]) mirror([1, 0, 0]) frame_cable_routing_hole();

		// neutrik mounts for connector, switches
		//translate([0, (frame_y/2)-neutrik_panel_thickness, 0]) rotate([90, 0, 0]) neutrik_d_mount();
		//translate([0, (frame_y/2)-neutrik_panel_thickness-4, 0]) frame_cutout();
		//translate([-40, (frame_y/2)-neutrik_panel_thickness, 0]) rotate([90, 0, 0]) neutrik_d_mount();
		//translate([-40, (frame_y/2)-neutrik_panel_thickness-4, 0]) frame_cutout();
		//translate([40, (frame_y/2)-neutrik_panel_thickness, 0]) rotate([90, 0, 0]) neutrik_d_mount();
		//translate([40, (frame_y/2)-neutrik_panel_thickness-4, 0]) frame_cutout();
	}
}

middle_frame();
