//blownup demo using slim frames
/*
            /\/\/\/\/\/\/\/\/WARNING\/\/\/\/\/\/\/\/\/\/\/\
    FRAME MODULE NAMES HAVE THE SAME NAME TO THE STANDARD COUNTERPARTS
            DO NOT LOAD BOTH SLIM AND STANDARD FRAMES FILES
*/
include <components.scad>
//top panels
use <top-panel-right-hitbox-6-buttons.scad>
use <top-panel-left-4-button-directions.scad>
use <misc-decorative-plate-hitbox-6-buttons.scad>
use <misc-decorative-plate-dir_arc_24mm_directionals.scad>
//frames
use <frame-slim-left.scad>
use <frame-slim-middle.scad>
use <frame-slim-right.scad>
//bottom panels
use <bottom-panel-left.scad>
use <bottom-panel-middle.scad>
use <bottom-panel-right.scad>

color("#C12E1F") translate([-top_plate_x/2-25, 0, frame_z/2+20]) 
    top_panel_hitbox_directions();
color("#C12E1F") translate([top_plate_x/2+25, 0, frame_z/2+20]) top_panel_right_hitbox_8_buttons();
color("black") translate([-frame_x/2+5-25, 0, -2.5]) left_frame();
color("black") translate([frame_x/2+25, 0, -2.5]) right_frame();
color("#C12E1F") translate([-top_plate_x/2-25, 0, -5-frame_z/2-20]) bottom_panel_left();
color("#C12E1F") translate([top_plate_x/2+25, 0, -5-frame_z/2-20]) bottom_panel_right();

color("black") translate([-195, 25, 3+frame_z/2+50]){ 
        dir_arc_24mm_directionals_decorative_plate();
}
color("black") translate([top_plate_x, 25, 3+frame_z/2+50]){
    translate([-70,-20,0])
        hitbox_r_24mm_decorative_plate();
}


