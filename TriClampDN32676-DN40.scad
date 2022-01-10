// DN40 1,5Zoll DIN 32676
d1 = 38;
d2 = 41;
d3 = 50.5; // Flansch aussen
d4 = 43.5; // Ring
l3 = 21.5;
l4 = 2.85;
a1 = 20.0;
r1 = 1.2;
r2 = 0.8;
r3 = 3.0;

$fn = 128;
  
difference() {
    union() {
        cylinder(h=l4,r1=d3,r2=d3);
        translate ([0, 0, l4])
            cylinder(h=l3-l4,r1=d2,r2=d2);
        translate ([0, 0, l4])
            cylinder(h=l3-l4,r1=d2,r2=d2);
        h1 = d3/2 / tan(90-a1);
        translate ([0, 0, l4])
            cylinder(h=h1,r1=d3,r2=d2);
    }
    translate ([0, 0, -0.1])
        cylinder(h=l3+0.2,r1=d1,r2=d1);
    rotate_extrude(){
        translate([d4, 0, 0])
            circle(r1); 
    }
}
