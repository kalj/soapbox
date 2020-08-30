tray_height = 40;
/* tray_height = 2; */
tray_length = 145-29;
tray_depth = 70;
tray_corner_rad = 4;
tab_height = 15;
tab_depth = 5;
feet_height = 5;
feet_diam = 5;


mixer_main_depth=46;
mixer_back_width=70.5;
mixer_back_xoffset=6.5;
mixer_back_tab_yoffset=7;


// tray
R=150;

difference() {
    union() {
        intersection() {
            translate([0,0,-2])
            hull() {
                translate([tray_corner_rad,tray_corner_rad,0]) cylinder(h=tray_height, r=tray_corner_rad, $fn=24);
                translate([tray_length-tray_corner_rad,tray_corner_rad,0]) cylinder(h=tray_height, r=tray_corner_rad, $fn=24);
                translate([tray_corner_rad,tray_depth-tray_corner_rad,0]) cylinder(h=tray_height, r=tray_corner_rad, $fn=24);
                translate([tray_length-tray_corner_rad,tray_depth-tray_corner_rad,0]) cylinder(h=tray_height, r=tray_corner_rad, $fn=24);
            }
            translate([tray_length/2, tray_depth/2, R]) scale([1.5,1,1]) sphere(r=R, $fn=128);

        }
/* cube([tray_length, tray_depth, tray_height]); */


// tabs
        translate([4, 0, -tab_height]) cube([28, tab_depth, tab_height+10]);
        translate([4, tab_depth+mixer_main_depth, -tab_height]) cube([28, tab_depth, tab_height+10]);

        translate([tray_length-16, 0, -tab_height]) cube([10, tab_depth, tab_height+10]);

        translate([tray_length-mixer_back_xoffset, tab_depth+mixer_main_depth+mixer_back_tab_yoffset, -tab_height]) cube([tab_depth, 10, tab_height+10]);

        translate([tray_length-mixer_back_xoffset-mixer_back_width-tab_depth, tab_depth+mixer_main_depth+mixer_back_tab_yoffset, -tab_height]) cube([tab_depth, 10, tab_height+10]);

/* #translate([32, tab_depth+mixer_main_depth, -10]) cube([7,7,10]); */

// feet
        translate([8, tab_depth+mixer_main_depth-5, -feet_height]) cylinder(d=feet_diam, h=feet_height+10, $fn=32);
        translate([8, tab_depth+5, -feet_height]) cylinder(d=feet_diam, h=feet_height+10, $fn=32);

        translate([tray_length-10, tab_depth+5, -feet_height]) cylinder(d=feet_diam, h=feet_height+10, $fn=32);
        translate([tray_length-10, tab_depth+mixer_main_depth-5, -feet_height]) cylinder(d=feet_diam, h=feet_height+10, $fn=32);

        translate([tray_length-mixer_back_xoffset-mixer_back_width/2, tab_depth+57, -feet_height]) cylinder(d=feet_diam, h=feet_height+10, $fn=32);
    }
    translate([tray_length/2, tray_depth/2, R+4]) scale([1.5,1,1]) sphere(r=R, $fn=128);


    translate([tray_length/2,tray_depth/2,0]) {
        cylinder(d=2,h=100,$fn=24);
        translate([ 3, 2,0]) cylinder(d=2,h=100,$fn=24);
        translate([ 3,-2,0]) cylinder(d=2,h=100,$fn=24);
        translate([-3, 2,0]) cylinder(d=2,h=100,$fn=24);
        translate([-3,-2,0]) cylinder(d=2,h=100,$fn=24);
    }
}
