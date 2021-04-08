module twistedTorus(r1, r2)
    { union() 
    { segment = 1;
      $fn = 5;
      for (i = [0:segment:360])
    { rotate([90, 0, i])
    { translate( [r2, 0, 0])
    { rotate( [0, 0, i])
    { linear_extrude(2*segment)
    { difference()
    { circle(r1);
      translate([0, -r1, 0]) square([r1, 2*r2]);
    }}}}}}}}

r1 = 10;
r2 = 22;
   
   
translate([0, 0, 0]) rotate( [0, 0, 0] ) color([1,0,0])twistedTorus( r1, r2 );
   
translate([-r2, 0, 0]) rotate( [90, 90, 0] ) color([0,0,1]) twistedTorus( r1, r2 );
