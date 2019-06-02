bigCylinderRaduis = 30;
bigCylinderHeight = 20;
smallCylinderRaduis = 10;
smallCylinderHeight = 10;
gap=15;

//Big cylinder
translate([0,0,2])
    cylinder(h=bigCylinderHeight, d1=bigCylinderRaduis, d2=bigCylinderRaduis);

//Union
hull() { 
cylinder(h=2, d1=bigCylinderRaduis, d2=bigCylinderRaduis);

translate([(bigCylinderRaduis/2)+gap+(smallCylinderRaduis/2),0,0])
    cylinder(h=2, d1=smallCylinderRaduis, d2=smallCylinderRaduis);
}

//Small cylinder
translate([(bigCylinderRaduis/2)+gap+(smallCylinderRaduis/2),0,0])
    cylinder(h=smallCylinderHeight, d1=smallCylinderRaduis, d2=smallCylinderRaduis);
