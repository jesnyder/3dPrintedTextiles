module twistedTorus(r1, r2)
    { union() 
    { segment = 0.2;
      $fn = 10;
      for (i = [0:segment:360])
    { rotate([90, 0, i])
    { translate( [r2, 0, 0])
    { rotate( [0, 0, i])
    { linear_extrude(segment*4)
    { difference()
    { circle(r1);
      translate([0, -r1, 0]) square([r1, 2*r2]);
    }}}}}}}}

r1 = 20;
r2 = 50;
   
   
translate([0, 0, 0]) rotate( [0, 0, 0] ) color([1,0,0])twistedTorus( r1, r2 );
   
translate([-r2+5, 0, 0]) rotate( [90, 90, 0] ) color([0,0,1]) twistedTorus( r1, r2 );
