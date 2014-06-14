//Include Lego Gear File (original from http://www.thingiverse.com/thing:40410)
include <gear-v3.scad>

// Example importing an existing STL file. Need to scale, rotate and translate to fit on the gear
//Robot Arm (stl file from http://www.thingiverse.com/thing:242098)
*difference() {
	translate([-20,-20,1]) rotate([0,0,0]) scale(0.90) import("arm.stl", center=true);
	cube(x=10,y=10,z=10, center=true);
}

// Example including another open scad file
//Robot (http://www.thingiverse.com/thing:53285)
include <customizable_robot_keychain_gear.scad>;

//scale([.70, .70, 0.5]) translate([-178,-270,1]) linear_extrude(height = 3)  import(file = "Rivet1BW_WOW_head.dxf", layer = "Layer_1", center="true");//scale([.33, .33, .5]) translate([-100,-190,1]) linear_extrude(height = 3)  import(file = "Rivet1BW_WOW_Frame2.dxf", layer = "Layer_1", center="true");
//scale([.20, .20, .5]) translate([-105,-200,1]) linear_extrude(height = 3)  import(file = "WOWNotagHoz1C_Frame.dxf", layer = "Layer_1", center="true");
//scale([.15, .15, 0.5]) translate([-105,-175,1]) linear_extrude(height = 3)  import(file = "Robot1BW_WOW_Frame2.dxf", layer = "Layer_1", center="true");
//scale([.15, .15, 0.5]) translate([-105,-170,1]) linear_extrude(height = 3)  import(file = "Robot2BW_WOW_Frame2.dxf", layer = "Layer_1", center="true");
//scale([.15, .15, 0.5]) translate([-105,-170,1]) linear_extrude(height = 3)  import(file = "Robot3BW_WOW.dxf", layer = "Layer_1", center="true");


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