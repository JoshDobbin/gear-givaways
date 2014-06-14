//Include Lego Gear File
include <gear-v3.scad>

//Load image into gimp. Get edges and dialate them. Set threshold.

//Load icon generated OmNomNom and edge image and output as medallion

//Change OmNomNom medallion file to have the following properties:
//The dimensions of the object
//  surfaceWidth = 35.0;
//  aspectRatio = 231 / 256;
//  surfaceLength = surfaceWidth / aspectRatio;
//  surfaceHeight = 1.0;
//  baseDiameter = max(surfaceWidth, surfaceLength) * 0.5;
//  baseHeight = 0.5;
//  holeDiameter = 0;         //0 removes the hole
//  holeDistanceFromTop = 5;

//Make sure you comment out the 3DSurface Line in the OmNomNom file
//3DSurface(surfaceWidth, surfaceLength, surfaceHeight);

//include <Rivet1BW_WOW_Frame.scad>
//include <Robot2BS_WOW_Frame.scad>
//include <Robot3BW_WOW_Frame.sc4d>
//include <WOWTagVer1C_Frame.sca4d>


//Add extra verticies.
//Convert to linear segments
//Save as dxf file

//Robot
//difference() {
//translate([-15,-20,1]) rotate([0,0,0]) scale(0.90) import("../../Demos/arm.stl", center=true);
//cube(x=10,y=10,z=10, center=true);
//}

//Robot
//include <customizable_robot_keychain_v03.scad>;

//scale([.70, .70, 0.5]) translate([-178,-270,1]) linear_extrude(height = 3)  import(file = "Rivet1BW_WOW_head.dxf", layer = "Layer_1", center="true");//scale([.33, .33, .5]) translate([-100,-190,1]) linear_extrude(height = 3)  import(file = "Rivet1BW_WOW_Frame2.dxf", layer = "Layer_1", center="true");
scale([.20, .20, .5]) translate([-105,-200,1]) linear_extrude(height = 3)  import(file = "WOWNotagHoz1C_Frame.dxf", layer = "Layer_1", center="true");
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
//translate([0,0,5]) {
//	cylinder(h=1, r=25.4);
//}