//cube(100,0,0);

/*rotate([0,0,1frontAngle])
    cube(20);*/
    
totalWidth=250;

width = 100;
depth = 100;
height = 10;
    
L = 8;

lateralAngle = 17;
frontAngle = 5;

/*translate([-width/2, 0, 0])
sphere(r = depth);*/

/*difference() {
    translate([0, (-depth*2)+1.8frontAngle, 2.7])
        cube([width+(L*2),depth*2,height],center=true);

    //translate([0, (-depth*2)+0.frontAngle, 2.7])
        //cylinder(10,10,10, $fn=6);
}*/
    
// Pinza
//rotate([-lateralAngle,0,0])
difference() {

    // Main Body
    //cube([width+(L*2),depth+(2*L),height],center=true);
    cube([totalWidth,depth+(2*L),height],center=true);

    rotate([0,0,0]) {
        // Right Hole
        translate([-(width/2)+L,(depth/2)-(L),0])
            rotate([-lateralAngle,frontAngle,0])        
                cube([L*2,L,height*4],center=true);

        //Left Hole
        translate([(width/2)-L,(depth/2)-(L),0])
            rotate([-lateralAngle,-frontAngle,0])        
                cube([L*2,L,height*4],center=true);

        // Between holes
        translate([0,(depth/2)-(L),0])
            rotate([-lateralAngle,0,0])
                cube([width-(L*2),L+0.01,height*4],center=true);

        // Front right Hole
        translate([-(width/2)+2*L,(depth/2)+L/2,0])
            rotate([-lateralAngle,frontAngle,0])
                cube([L*2,2*L,height*4],center=true);

        // Front left Hole
        translate([(width/2)-2*L,(depth/2)+L/2,0])
            rotate([-lateralAngle,-frontAngle,0])        
                cube([L*2,2*L,height*4],center=true);

        // Between front holes
        translate([0,(depth/2)+L/2,0])
            rotate([-lateralAngle,0,0])
                cube([width-(L*4),2*L,height*4],center=true);
    }

    // right panel
    /*translate([-(width/2)-(L+(L/2))+0.5,0,0])
        rotate([0,frontAngle,0])        
            cube([L,depth+(3*L),height*4],center=true);*/

    //Left panel
    /*translate([(width/2)+(L+(L/2))-0.5,0,0])
        rotate([0,-frontAngle,0])        
            cube([L,depth+(3*L),height*4],center=true);*/

    translate([0, (-depth/2), 0])
        cylinder(6,6,6, $fn=6);

    translate([(-width/3), (-depth/2), 0])
        cylinder(6,6,6, $fn=6);
    

    translate([(width/3), (-depth/2), 0])
        cylinder(6,6,6, $fn=6);

}