baseDiameter = 210;
baseHeight = 40;
drawerWidth = 150;
unionHeight = 5;
walls = 3;
padding = 0.25;

holeCylinderRadius = 20;

//Global variable
$fn=360; 


// Stand
difference() {  
    cylinder(h=baseHeight, d1=baseDiameter, d2=baseDiameter, center = true);
    
    translate([0,-(baseDiameter-drawerWidth),-unionHeight])
        cube([drawerWidth, baseDiameter, baseHeight], center = true);
}

