height = 30;
depth = 40;

width = height/4;

cdHole = 15;

//Base
color("orange")
    translate([height+(width/2),(height/2)+(width/1.5),-width])
        cylinder(width,height*1.6,height*1.5, $fn=16);

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
    translate([-height/2,(depth/2)-width,0])
        cube([height*3,cdHole,height*2]);
}