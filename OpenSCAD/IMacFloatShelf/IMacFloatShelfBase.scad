//cube(100,0,0);

/*rotate([0,0,15])
    cube(20);*/
    
width = 150;
depth = 10;
height = 10;
    
/*translate([-width/2, 0, 0])
sphere(r = depth);*/

difference() {
    translate([0, (-depth*2)+1.85, 2.7])
        cube([width,depth*2,height],center=true);

    translate([0, (-depth*2)+0.5, 2.7])
        cylinder(10,10,10, $fn=6);
}
    
// Pinza
rotate([-17,0,0])
difference() {
    cube([width,depth*2,height],center=true);

    cube([width-(depth),depth,height*2],center=true);

    translate([0, depth-1, 0])
        cube([width-(depth*2),depth,height*3],center=true);
}