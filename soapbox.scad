/* tray_height = 30; */
tray_height = 4;
tray_length = 145-29;
tray_depth = 70;
/* tab_height = 15; */
tab_height = 10;
tab_depth = 5;
feet_height = 5;
feet_diam = 5;


// tray
cube([tray_length, tray_depth, tray_height]);

// tabs
translate([2, 0, -tab_height]) cube([30, tab_depth, tab_height]);
translate([2, tab_depth+46, -tab_height]) cube([30, tab_depth, tab_height]);

translate([tray_length-16, 0, -tab_height]) cube([10, tab_depth, tab_height]);

translate([tray_length-6.5, tab_depth+55, -tab_height]) cube([tab_depth, 10, tab_height]);

translate([tray_length-6.5-71-tab_depth, tab_depth+55, -tab_height]) cube([tab_depth, 10, tab_height]);

// feet
translate([8, tab_depth+46-5, -feet_height]) cylinder(d=feet_diam, h=feet_height, $fn=32);
translate([8, tab_depth+5, -feet_height]) cylinder(d=feet_diam, h=feet_height, $fn=32);

translate([tray_length-10, tab_depth+5, -feet_height]) cylinder(d=feet_diam, h=feet_height, $fn=32);
translate([tray_length-10, tab_depth+46-5, -feet_height]) cylinder(d=feet_diam, h=feet_height, $fn=32);

translate([tray_length-6.5-71/2, tab_depth+57, -feet_height]) cylinder(d=feet_diam, h=feet_height, $fn=32);
