include <components.scad>

difference(){
    top_plate_with_raised_overhang();
    translate([0,0,-3.5])
    switch_sega_2p();

}
