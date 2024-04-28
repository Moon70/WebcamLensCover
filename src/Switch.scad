include <Parameter.scad>

sliderZpos=0;

knobRadius=3;
knobHeight=1;


slider();


module slider(){
    base();
    knob();
}

module base(){
    radius=cornerRadius-wallThickness;
    hull()
    {
        translate([-sliderX/2+radius,-sliderY/2+radius,0])
        cylinder(h=sliderZ,r=radius,center=true);
        translate([sliderX/2-radius,-sliderY/2+radius,0])
        cylinder(h=sliderZ,r=radius,center=true);
        translate([-sliderX/2+radius,sliderY/2-radius,0])
        cylinder(h=sliderZ,r=radius,center=true);
        translate([sliderX/2-radius,sliderY/2-radius,0])
        cylinder(h=sliderZ,r=radius,center=true);
    }
}

module knob(){
    translate([0,0,knobHeight/2])
    cylinder(h=knobHeight,r=knobRadius,center=true);

    difference()
    {
        translate([0,0,knobHeight])
        sphere(r=knobRadius);

        translate([0,0,-knobRadius+knobHeight])
        cube([knobRadius*2,knobRadius*2,knobRadius*2],center=true);
    }
}