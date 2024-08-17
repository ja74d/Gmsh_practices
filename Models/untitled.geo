//+
Point(1) = {8, 8, 0, 1.0};
//+
Point(2) = {8, 0, 0, 1.0};
//+
Point(3) = {0, 8, 0, 1.0};
//+
Point(4) = {0, 0, 0, 1.0};
//+
Line(1) = {3, 1};
//+
Line(2) = {1, 2};
//+
Line(3) = {2, 4};
//+
Line(4) = {4, 3};
//+
Point(5) = {4, 4, 0, 1.0};
//+
Point(6) = {4, 4.5, 0, 1.0};
//+
Point(7) = {4, 3.5, 0, 1.0};
//+
Circle(5) = {7, 5, 6};
//+
Circle(6) = {6, 5, 7};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Curve Loop(2) = {6, 5};
//+
Plane Surface(1) = {1, 2};
//+
Physical Curve("l", 7) = {4};
//+
Physical Curve("r", 8) = {2};
//+
Physical Curve("t", 9) = {1};
//+
Physical Curve("b", 10) = {3};
//+
Physical Curve("c", 11) = {6, 5};
//+
Physical Surface("c", 12) = {1};
