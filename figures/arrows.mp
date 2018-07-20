% Useful definitons
input macros.mp

verbatimtex
%&latex
\documentclass{article}
% from acmart.cls
\usepackage[varqu]{zi4}
\usepackage[libertine]{newtxmath}
\begin{document}
etex

beginfig(1);
picture q[];
path p[];

% This diagram is simply.
% It helps to first sketch the diagram on paper.
% Then name all "anchor" points, and write a single diagram for self-reference.
%
% In this diagram there are three nodes:
%
% 0 -- 1 -- 2 -- 3

% dimX and dimY help to scale the diagram!
% I use negative dimY so bottom-left corner is (0,0).
z0=(0dimX, 0dimY);
z1=(1dimX, 0.5dimY);
z2=(2dimX, 0dimY);
z3=(3dimX, 0.5dimY);

% Labels. We can use TeX math. Cannot use lhs2tex syntax here :(
q0 = thelabel(btex $A$ etex, z0);
q1 = thelabel(btex $B$ etex, z1);
q2 = thelabel(btex $C$ etex, z2);
q3 = thelabel(btex $D$ etex, z3);

for i=0 upto 3:
	draw q[i];
endfor

% arrows; I abuse the array-ness of p, so pxy goes from x to y.
% memory usage is not a problem on modern computers
p01 = z0--z1;.
p12 = z1--z2;
p23 = z2--z3;

% dir converts angles to pairs (used as directions).
p02 = z0{dir20}..z2{dir340};
p03 = z0{dir30}..z3{dir320};

p13 = z1{dir340}..z3{dir20};
p032 = z0{dir320}..z3{dir30}; % :( two arrows


% we draw an arrow from label to label.
% clippath macro prevents to drawing over a label.
drawarrow clippath(p01, q0, q1) withcolor acmDarkBlue;
draw thelabel.top(btex $f$ etex, point 0.5 of p01) withcolor acmDarkBlue;

drawarrow clippath(p12, q1, q2) withcolor acmDarkBlue;
draw thelabel.bot(btex $g$ etex, point 0.5 of p12) withcolor acmDarkBlue;

drawarrow clippath(p23, q2, q3) withcolor acmDarkBlue;
draw thelabel.bot(btex $h$ etex, point 0.5 of p23) withcolor acmDarkBlue;

drawarrow clippath(p02, q0, q2) withcolor acmRed;
draw thelabel.bot(btex $g \circ f$ etex, point 0.5 of p02) withcolor acmRed;
drawarrow clippath(p03, q0, q3) withcolor acmPurple;
draw thelabel.top(btex $h \circ (g \circ f)$ etex, point 0.5 of p03)  withcolor acmPurple;

drawarrow clippath(p13, q1, q3) withcolor acmRed;
draw thelabel.top(btex $h \circ g$ etex, point 0.5 of p13) withcolor acmRed;
drawarrow clippath(p032, q0, q3) withcolor acmPurple;
draw thelabel.bot(btex $(h \circ g) \circ f$ etex, point 0.5 of p032) withcolor acmPurple;

endfig;

verbatimtex
\end{document}
etex
end
