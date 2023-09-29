include <components.scad>

module solo_frame() {
	difference() {
		frame();

//		// neutrik mounts for connector, switches
//		translate([0, (frame_y/2)-2.5, 0]) rotate([90, 0, 0]) neutrik_d_mount();
//		translate([0, (frame_y/2)-neutrik_panel_thickness-4, 0]) frame_cutout();
//		translate([-40, (frame_y/2)-2.5, 0]) rotate([90, 0, 0]) neutrik_d_mount();
//		translate([-40, (frame_y/2)-neutrik_panel_thickness-4, 0]) frame_cutout();
//		translate([40, (frame_y/2)-2.5, 0]) rotate([90, 0, 0]) neutrik_d_mount();
//		translate([40, (frame_y/2)-neutrik_panel_thickness-4, 0]) frame_cutout();
//
//		// aux button holes
//		translate([-frame_x/2+2.5, 0, 0]) rotate([0, 0, 270])
//			translate([0, 0, 0]) rotate([90, 0, 0]) button_24mm_hole();
//		translate([(frame_x/2)-neutrik_panel_thickness-4, 0, 0]) rotate([0, 0, 90]) frame_cutout();
//		translate([-frame_x/2+2.5, 0, 0]) rotate([0, 0, 270])
//			translate([-40, 0, 0]) rotate([90, 0, 0]) button_24mm_hole();
//		translate([(frame_x/2)-neutrik_panel_thickness-4, -40, 0]) rotate([0, 0, 90]) frame_cutout();
//		translate([-frame_x/2+2.5, 0, 0]) rotate([0, 0, 270])
//			translate([40, 0, 0]) rotate([90, 0, 0]) button_24mm_hole();
//		translate([(frame_x/2)-neutrik_panel_thickness-4, 40, 0]) rotate([0, 0, 90]) frame_cutout();
//		translate([frame_x/2-2.5, 0, 0]) rotate([0, 0, 90])
//			translate([0, 0, 0]) rotate([90, 0, 0]) button_24mm_hole();
//		translate([-(frame_x/2)+neutrik_panel_thickness+4, 0, 0]) rotate([0, 0, 90]) frame_cutout();
//		translate([frame_x/2-2.5, 0, 0]) rotate([0, 0, 90])
//			translate([-40, 0, 0]) rotate([90, 0, 0]) button_24mm_hole();
//		translate([-(frame_x/2)+neutrik_panel_thickness+4, -40, 0]) rotate([0, 0, 90]) frame_cutout();
//		translate([frame_x/2-2.5, 0, 0]) rotate([0, 0, 90])
//			translate([40, 0, 0]) rotate([90, 0, 0]) button_24mm_hole();
//		translate([-(frame_x/2)+neutrik_panel_thickness+4, 40, 0]) rotate([0, 0, 90]) frame_cutout();
	}
}

scale([1,1,0.5])
    solo_frame();
