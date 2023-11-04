$fn=50;

sliderX=23;
sliderY=20.4;
sliderZ=0.4;
sliderZpos=0;
radius=3;

knobRadius=3;
knobHeight=3;


slider();


module slider(){
    base();
    knob();
}

module base(){
    hull()
    {
        translate([-sliderX/2+radius,-sliderY/2+radius,sliderZpos])
        cylinder(h=sliderZ,r=radius,center=true);
        translate([sliderX/2-radius,-sliderY/2+radius,sliderZpos])
        cylinder(h=sliderZ,r=radius,center=true);
        translate([-sliderX/2+radius,sliderY/2-radius,sliderZpos])
        cylinder(h=sliderZ,r=radius,center=true);
        translate([sliderX/2-radius,sliderY/2-radius,sliderZpos])
        cylinder(h=sliderZ,r=radius,center=true);
    }
}

module knob(){
    translate([0,0,knobHeight/2])
    cylinder(h=knobHeight,r=knobRadius,center=true);

    translate([0,0,knobHeight])
    sphere(r=radius);
}