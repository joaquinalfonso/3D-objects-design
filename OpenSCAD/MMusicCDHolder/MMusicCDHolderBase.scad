height = 30;
depth = 40;

width = height/4;

studsWidth = width/2-0.5;

cdHole = 12;

//Base
union() {
    translate([height+(width/2),(height/2)+(width/1.5),-width])
        cylinder(width,height*1.6,height*1.5, $fn=12);

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
