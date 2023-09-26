$fs = 0.3;
$fa = 2;
//DIMENSIONI PCB
oled_pcb_x = 35.50;
oled_pcb_y = 33.70;
oled_pcb_z = 1.3;
oled_pcb_hole_diameter =3.3;
oled_pcb_hole_x = 31.42;
oled_pcb_hole_y = 29.70;

//DIMENSIONI SCHERMO
oled_display_x = 31.50;
oled_display_y = 16.70;
oled_display_z = 1.3;

//oled PCB + holes
difference(){
    color("Blue", 0.8)
    cube([oled_pcb_x, oled_pcb_y, oled_pcb_z], center = true);
    translate([oled_pcb_hole_x/2, oled_pcb_hole_y/2, 0])
        cylinder(h=oled_pcb_z+0.2, r=oled_pcb_hole_diameter/2, center = true);
    translate([-oled_pcb_hole_x/2, oled_pcb_hole_y/2, 0])
        cylinder(h=oled_pcb_z+0.2, r=oled_pcb_hole_diameter/2, center = true);
    translate([oled_pcb_hole_x/2, -oled_pcb_hole_y/2, 0])
        cylinder(h=oled_pcb_z+0.2, r=oled_pcb_hole_diameter/2, center = true);
    translate([-oled_pcb_hole_x/2, -oled_pcb_hole_y/2, 0])
        cylinder(h=oled_pcb_z+0.2, r=oled_pcb_hole_diameter/2, center = true);
}
//oled display
translate([0,0,1.3])
    union(){
        translate([0,0,0.001])
        color("Cyan",1.0)
        cube([oled_display_x, oled_display_y, oled_display_z], center=true);
        color("Black", 1.0)
        cube([34.50, 23.0, 1.3], center = true);
    }