height = 30;
depth = 40;

width = height/4;

studsWidth = width/2-0.5;

cdHole = 12;

difference() {
    //Logo
     union() {
        translate([0, 0, height-width])
            cube([height*2,depth,width]);

        cube([width,depth,height]);

        translate([height, 0, 0])
            cube([width,depth,height]);

        translate([height*2, 0, 0])
            cube([width,depth,height]);

        translate([height*0.5, 0, width])
            cube([width,depth,height-width]);

        translate([height*1.5, 0, width*2])
            cube([width,depth,height-(2*width)]);      
    }

    //hole
    translate([-height/2,(depth/2)-width+0.5,0])
        rotate([-5,0,0])
            cube([height*3,cdHole,height*2]);

    // Patas delanteras
    translate([width/2, width, -width/2])
        rotate([0,0,30]) 
            cylinder(width*1.5,studsWidth,studsWidth, $fn=6);

    translate([height + width/2, width, -width/2])
        rotate([0,0,30]) 
            cylinder(width*1.5,studsWidth,studsWidth, $fn=6);

    translate([height*2 + width/2, width, -width/2])
        rotate([0,0,30]) 
            cylinder(width*1.5,studsWidth,studsWidth, $fn=6);

    // Patas traseras
    translate([width/2, height + width/3, -width/2])
        rotate([0,0,30]) 
            cylinder(width*1.5,studsWidth,studsWidth, $fn=6);

    translate([height + width/2, height + width/3, -width/2])
        rotate([0,0,30]) 
            cylinder(width*1.5,studsWidth,studsWidth, $fn=6);

    translate([height*2 + width/2, height + width/3, -width/2])
        rotate([0,0,30]) 
            cylinder(width*1.5,studsWidth,studsWidth, $fn=6);
}