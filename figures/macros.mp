prologues      := 3;

dimX=2.0cm;
dimY=-1.5cm;

dimC=2pt;

vardef clippathp(expr p, a, b) =
	save s, t, r;

	numeric s;
	numeric t;
	path r;

	(whatever, t1) = a intersectiontimes p;
	(whatever, t2) = b intersectiontimes (reverse p);

	subpath (t1, length(p) - t2) of p
enddef;

% like path, but clipped to boxes.
vardef clippath(expr p, a, b) =
	clippathp(p, bbox(a), bbox(b))
enddef;

def midpoint(expr p) = point 0.5 of p enddef;

vardef largerbbox(expr p) = 
	save q, z;
	path q;
	pair z[];

	q = bbox p;

	z1 = ulcorner q shifted (-3mm, 1mm);
	z2 = urcorner q shifted (3mm, 1mm);
	z3 = lrcorner q shifted (3mm, -1mm);
	z4 = llcorner q shifted (-3mm, -1mm);

	z1--z2--z3--z4--cycle
enddef;

% acmart.cls defines colors
cmykcolor acmBlue, acmYellow, acmOrange, acmRed, acmLightBlue, acmGreen, acmPurple, acmDarkBlue;

acmBlue       := (1,0.1,0,0.1);
acmYellow     := (0,0.16,1,0);
acmOrange     := (0,0.42,1,0.01);
acmRed        := (0,0.90,0.86,0);
acmLightBlue  := (0.49,0.01,0,0);
acmGreen      := (0.20,0,1,0.19);
acmPurple     := (0.55,1,0,0.15);
acmDarkBlue   := (1,0.58,0,0.21);
