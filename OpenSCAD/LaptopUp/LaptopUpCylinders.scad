bigCylinderRaduis = 22;
bigCylinderHeight = 22;
smallCylinderRaduis = 8;
smallCylinderHeight = 10;
separation=15;
unionHeight = 3;
holeHeight=smallCylinderHeight;
holeRadiusUp=smallCylinderRaduis+2;
holeRadiusDown=smallCylinderRaduis;

//Global variable
$fn=100; 

//Big cylinder
difference() {
    translate([0,0,unionHeight])
        cylinder(h=bigCylinderHeight, d1=bigCylinderRaduis, d2=bigCylinderRaduis);

    //Hole
    translate([0,0,unionHeight+bigCylinderHeight-smallCylinderHeight+0.1])
        cylinder(h=holeHeight, d1=holeRadiusDown, d2=holeRadiusUp);
}

//Small cylinder
translate([(bigCylinderRaduis/2)+separation+(smallCylinderRaduis/2),0,unionHeight])
    cylinder(h=smallCylinderHeight, d1=smallCylinderRaduis, d2=smallCylinderRaduis);

//Union
hull() { 
    cylinder(h=unionHeight, d1=bigCylinderRaduis, d2=bigCylinderRaduis);

    translate([(bigCylinderRaduis/2)+separation+(smallCylinderRaduis/2),0,0])
        cylinder(h=unionHeight, d1=smallCylinderRaduis, d2=smallCylinderRaduis);
}

