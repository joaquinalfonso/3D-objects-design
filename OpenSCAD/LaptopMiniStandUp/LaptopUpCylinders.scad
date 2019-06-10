bigCylinderRadius = 25;
bigCylinderHeight = 26;
smallCylinderRadius = 8;
smallCylinderHeight = 10;
separation=18;
unionHeight = 3;
holeHeight=smallCylinderHeight;
holeRadiusUp=smallCylinderRadius+1;
holeRadiusDown=smallCylinderRadius;

//Global variable
$fn=24; 

rail1YPosition = unionHeight+bigCylinderHeight-4;
rail2YPosition = unionHeight+(bigCylinderHeight/2-1);
rail3YPosition = unionHeight+3;
    

//Big cylinder
difference() {
    translate([0,0,unionHeight])
        cylinder(h=bigCylinderHeight, d1=bigCylinderRadius, d2=bigCylinderRadius);

    //Hole
    translate([0,0,unionHeight+bigCylinderHeight-smallCylinderHeight+0.1])
        cylinder(h=holeHeight, d1=holeRadiusDown, d2=holeRadiusUp);

    // Rail 1
    difference() {
        translate([0,0,rail1YPosition])
            cylinder(h=1, d1=bigCylinderRadius+0.5, d2=bigCylinderRadius+0.5);

        //Hole
        translate([0,0,rail1YPosition])
            cylinder(h=1, d1=bigCylinderRadius-0.5, d2=bigCylinderRadius-0.5);        
    };

    //Rail 2
    difference() {
        translate([0,0,rail2YPosition])
            cylinder(h=1, d1=bigCylinderRadius+0.5, d2=bigCylinderRadius+0.5);

        //Hole
        translate([0,0,rail2YPosition])
            cylinder(h=1, d1=bigCylinderRadius-0.5, d2=bigCylinderRadius-0.5);        
    }

    //Rail 3
    difference() {
        translate([0,0,rail3YPosition])
            cylinder(h=1, d1=bigCylinderRadius+0.5, d2=bigCylinderRadius+0.5);

        //Hole
        translate([0,0,rail3YPosition])
            cylinder(h=1, d1=bigCylinderRadius-0.5, d2=bigCylinderRadius-0.5);        
    }

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

