//Include Lego Gear File (original from http://www.thingiverse.com/thing:40410)
include <gear-v3.scad>

// Example 1: importing an existing STL file. Need to scale, rotate and translate to fit on the gear
//Ultimaker Robot (stl file from https://www.youmagine.com/designs/ultimaker-key-fob-flat)
difference() {
	translate([0,0,1]) rotate([0,0,0]) scale(0.90) import("ultimaker_fob_1_ES_TECH.stl", center=true);
	cube(x=10,y=10,z=10, center=true);
}

// Example 2: including another open scad file
//Robot (original from http://www.thingiverse.com/thing:53285)
//include <customizable_robot_keychain_gear.scad>;

// Example 3: including model as dxf file. See README.md file for instructions on how I created this dxf file from an pixle image file
//scale([.17, .17, 0.75]) translate([-110,-200,1]) linear_extrude(height = 3)  import(file = "icer.dxf", layer = "Layer_1", center="true");

//Generate 3DSurface4
difference() {
	union() {
		translate([0,0,-3]) {
			myGearParamed(51, 0, 0, 1, 1);
		}
		3DSurface(surfaceWidth, surfaceLength, surfaceHeight);
		 cylinder(h=1, r=5,center=true);
	}
	translate([0,20,0]) {
		cylinder(h=20, r=3,center=true);
	}
}