bigCylinderRadius = 22;
bigCylinderHeight = 22;
smallCylinderRadius = 8;
smallCylinderHeight = 10;
separation=16;
unionHeight = 3;
holeHeight=smallCylinderHeight;
holeRadiusUp=smallCylinderRadius+2;
holeRadiusDown=smallCylinderRadius;

//Global variable
$fn=36; 

//Big cylinder
difference() {
    translate([0,0,unionHeight])
        cylinder(h=bigCylinderHeight, d1=bigCylinderRadius, d2=bigCylinderRadius);

    //Hole
    translate([0,0,unionHeight+bigCylinderHeight-smallCylinderHeight+0.1])
        cylinder(h=holeHeight, d1=holeRadiusDown, d2=holeRadiusUp);
}

//Small cylinder
translate([(bigCylinderRadius/2)+separation+(smallCylinderRadius/2),0,unionHeight])
    cylinder(h=smallCylinderHeight, d1=smallCylinderRadius, d2=smallCylinderRadius);

//Union
hull() { 
    cylinder(h=unionHeight, d1=bigCylinderRadius, d2=bigCylinderRadius);

    translate([(bigCylinderRadius/2)+separation+(smallCylinderRadius/2),0,0])
        cylinder(h=unionHeight, d1=smallCylinderRadius, d2=smallCylinderRadius);
}

