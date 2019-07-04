baseDiameter = 210;
baseHeight = 40;
drawerWidth = 150;
unionHeight = 5;
walls = 3;
padding = 0.25;

holeCylinderRadius = 20;

//Global variable
$fn=360; 

// Drawer
difference() {
    //Drawer outside
    intersection() {
        cylinder(h=baseHeight, d1=baseDiameter, d2=baseDiameter, center = true);

        color("red", 0.8)
            translate([0,-(baseDiameter-drawerWidth)-padding,-unionHeight/2-padding])
                cube([drawerWidth-padding*2, baseDiameter, baseHeight-unionHeight], center = true);
    }

    //Drawer inside
    intersection() {
        cylinder(h=baseHeight-walls*2, d1=baseDiameter-walls*2, d2=baseDiameter-walls*2, center = true);

        color("blue", 0.8)
            translate([0,-(baseDiameter-drawerWidth)-padding,-unionHeight/2+walls*2])
                cube([drawerWidth-walls*2-padding*2, baseDiameter-walls*2, baseHeight-unionHeight], center = true);
    }

    // Drawer hole
    hull() {
        translate([0,0,unionHeight*3])
            rotate([90,0,0])        
                cylinder(h=drawerWidth, d1=holeCylinderRadius, d2=holeCylinderRadius, $fn=36);

        translate([0,0,unionHeight])
            rotate([90,0,0])        
                cylinder(h=drawerWidth, d1=holeCylinderRadius, d2=holeCylinderRadius, $fn=36);
        }
}


