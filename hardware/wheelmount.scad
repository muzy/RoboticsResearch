union() {
translate([0,0,-3]){
difference() {
	cylinder(h = 3, r=15, $fn=200);
   translate([6,6,-2]) {cylinder(h = 6, r = 2.1, $fn=200); }
	translate([-6,6,-2]) {cylinder(h = 6, r = 2.1, $fn=200); }
	translate([-6,-6,-2]) {cylinder(h = 6, r = 2.1, $fn=200); }
	translate([6,-6,-2]) {cylinder(h = 6, r = 2.1, $fn=200); }
}
}
difference() {
	cylinder(h = 9, r = 5.5, $fn = 200);
	translate([0,0,6]){cylinder(h = 6, r = 2.5, $fn = 200);}
	translate([0,0,-1]){intersection()
		{
		cylinder(r=5/2, h=12, $fn=200);
		cube([3,6,18],center=true);
		}
	}

	translate([-10,0,3.5]){
	rotate(a=[0,90,0]){
		cylinder(h = 20, r = 1.85, $fn = 200);
	}
	}
}
}

