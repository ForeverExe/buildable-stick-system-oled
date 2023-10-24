include <components.scad>
use <roundedcube.scad>
module base_right_frame() {
    scale([1,1,0.5]){
        difference() {
            frame();
            // chop the left edge off
            mirror([1, 0, 0]) side_chopper();
        }
    }
}

module right_frame() {
	difference() {
		base_right_frame();
        //female USBC port hole
        translate([-80,100,0])
            roundedcube([9,13,4], center=true, radius=1);
		// connection holes to other frames
//		mirror([1, 0, 0]) translate([0, 0, -top_plate_z/2]) frame_connection_holes();
//
//		// cable routing hole
//		mirror([1, 0, 0]) translate([0, 0, -top_plate_z/2]) frame_cable_routing_hole();
//
//		// aux button holes
//		translate([30, 101.5, 0]) rotate([270, 0, 0]) button_24mm_hole();
//		translate([30, (frame_y/2)-neutrik_panel_thickness-4, 0]) frame_cutout();
//		translate([70, 101.5, 0]) rotate([270, 0, 0]) button_24mm_hole();
//		translate([70, (frame_y/2)-neutrik_panel_thickness-4, 0]) frame_cutout();
//		translate([-10, 101.5, 0]) rotate([270, 0, 0]) button_24mm_hole();
//		translate([-10, (frame_y/2)-neutrik_panel_thickness-4, 0]) frame_cutout();
//
//		// neutrix button hole
//		translate([-70, (frame_y/2)-neutrik_panel_thickness, 0]) rotate([90, 0, 0]) neutrik_d_mount();
//		translate([-70, (frame_y/2)-neutrik_panel_thickness-4, 0]) frame_cutout();
	}
}


right_frame();
