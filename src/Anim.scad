use <LensCover.scad>
use <Switch.scad>

lensCover();
color("#004488")
if($t<0.5){
    translate([-12+48*$t,0,1.2])
    slider();
}else{
    translate([-12+48-48*$t,0,1.2])
    slider();
}