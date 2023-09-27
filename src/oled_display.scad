//PCB DIMENSIONS
oled_pcb_x = 35.50;
oled_pcb_y = 33.70;
oled_pcb_z = 1.3;
oled_pcb_hole_diameter =2.5;
oled_pcb_hole_x = 31.42;
oled_pcb_hole_y = 29.70;

//DISPLAY DIMENSIONS
oled_display_x = 31.50;
oled_display_y = 16.70;
oled_display_z = 1.3;

//function to setup the oled display measurements, by default it's a 1.3 Inches, 128x64 display
module oled_display_setup(_oled_pcb_x, _oled_pcb_y, _oled_pcb_z, _oled_pcb_hole_diameter, _oled_pcb_hole_x, _oled_pcb_hole_y, _oled_display_x, _oled_display_y, _oled_display_z){
    oled_pcb_x = _oled_pcb_x;
    oled_pcb_y = _oled_pcb_y;
    oled_pcb_z = _oled_pcb_z;
    
    oled_pcb_hole_diameter = _oled_pcb_hole_diameter;
    oled_pcb_hole_x = _oled_pcb_hole_x;
    oled_pcb_hole_y = _oled_pcb_hole_y;
    
    oled_display_x = _oled_display_x;
    oled_display_y = _oled_display_y;
    oled_display_z = _oled_display_z;
};

//since there's the possibility to have the pins printed, I've divided the two
module OLED_Display_pcb(){
    //oled PCB for difference()  
    color("Blue", 1)
    cube([oled_pcb_x, oled_pcb_y, oled_pcb_z+4], center = true);
    //oled display
    translate([0,0,1.3])
        union(){
            translate([0,0,-0.001])
            color("Cyan",1.0)
            cube([oled_display_x, oled_display_y, oled_display_z+3], center=true);
            color("Black", 1)
            cube([34.50, 23.0, 1.3], center = true);
    }

};

module OLED_Display_pins(){
    //cylinders for difference() holes or insertion pins
    translate([oled_pcb_hole_x/2, oled_pcb_hole_y/2, 0])
        cylinder(h=oled_pcb_z+7, r=oled_pcb_hole_diameter/2, $fs = 0.3 , $fa = 1, center = true);
    translate([-oled_pcb_hole_x/2, oled_pcb_hole_y/2, 0])
        cylinder(h=oled_pcb_z+7, r=oled_pcb_hole_diameter/2, $fs = 0.3 , $fa = 1, center = true);
    translate([oled_pcb_hole_x/2, -oled_pcb_hole_y/2, 0])
        cylinder(h=oled_pcb_z+7, r=oled_pcb_hole_diameter/2, $fs = 0.3 , $fa = 1, center = true);
    translate([-oled_pcb_hole_x/2, -oled_pcb_hole_y/2, 0])
        cylinder(h=oled_pcb_z+7, r=oled_pcb_hole_diameter/2, $fs = 0.3 , $fa = 1, center = true);
}