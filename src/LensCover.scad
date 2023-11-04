overlap=0.004;
$fn=50;

baseX=48;
baseY=22;
baseZ=0.8;
baseZtop=baseZ;
baseZdelta=baseZ/2;


holeDeltaX=10;
holeDiameter=18.8;
holeHeight=10;

wallX=baseX;
wallY=baseY;
wallZ=1.0;
wallZtop=baseZtop+wallZ;
wallZdelta=baseZtop+wallZ/2;
wallThickness=1;

coverX=baseX;
coverY=baseY;
coverZ=0.6;
coverZtop=wallZtop+coverZ;
coverZdelta=wallZtop+coverZ/2;
coverDelta=2.6;


lensCover();


module lensCover(){
    base();
    wall();
    cover();
}

module base(){
    color("#555555")
    translate([0,0,baseZdelta])
    difference()
    {
        cube([baseX,baseY,baseZ],center=true);
        translate([holeDeltaX,0,0])
        cylinder(h=holeHeight,d=holeDiameter,center=true);
    }
}
    
module wall(){
    color("#dd9900")
    translate([0,0,wallZdelta])
    difference()
    {
        cube([wallX,wallY,wallZ],center=true);
        cube([wallX-wallThickness,wallY-wallThickness,wallZ+overlap*2+10],center=true);
    }
}

module cover(){
    color("#dddddd")
    translate([0,0,coverZdelta])
    difference()
    {
        cube([coverX,coverY,coverZ],center=true);
        cube([coverX-coverDelta,coverY-coverDelta,coverZ+overlap*2],center=true);
    }
}
