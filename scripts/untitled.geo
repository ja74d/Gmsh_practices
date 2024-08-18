//+
Transfinite Surface {3} = {4, 3, 2, 1};
//+
Transfinite Curve {4, 2} = 10 Using Progression 1;
//+
Transfinite Curve {3, 1} = 10 Using Progression 1;
//+
Recombine Surface {3};
//+
Transfinite Curve {4, 2} = 17 Using Progression 1;
//+
Transfinite Curve {3, 1} = 17 Using Progression 1;
//+
Transfinite Surface {3};
//+
Transfinite Surface {3} = {4, 3, 2, 1};
//+
Transfinite Curve {4, 2} = 17 Using Progression 1;
//+
Transfinite Curve {3, 1} = 17 Using Progression 1;
//+
Recombine Surface {3};
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {8, 0, 0, 1.0};
//+
Point(3) = {8, 8, 0, 1.0};
//+
Point(4) = {0, 8, 0, 1.0};
//+
Line(1) = {4, 3};
//+
Line(2) = {3, 2};
//+
Line(3) = {2, 1};
//+
Line(4) = {1, 4};
//+
Point(5) = {4, 4, 0, 1.0};
//+
Point(6) = {4, 4.5, 0, 1.0};
//+
Point(7) = {4, 3.5, 0, 1.0};
//+
Circle(5) = {6, 5, 7};
//+
Circle(6) = {7, 5, 6};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Curve Loop(2) = {5, 6};
//+
Plane Surface(1) = {1, 2};
//+
Physical Curve("rl", 7) = {4, 2};
//+
Physical Curve("tb", 8) = {1, 3};
//+
Physical Curve("c", 9) = {5, 6};
//+
Recombine Surface {1};
//+
Recombine Surface {1};
//+
Transfinite Curve {4, 2} = 17 Using Progression 1;
//+
Transfinite Curve {1, 3} = 17 Using Progression 1;
//+
Recombine Surface {1};
//+
Recombine Surface {1};
//+
Transfinite Surface {1};
//+
Transfinite Surface {1};
//+
Transfinite Surface {1};
//+
Transfinite Surface {1};
//+
Transfinite Surface {1};
//+
Transfinite Surface {1};
//+
Transfinite Surface {1} = {4, 3, 2, 1};
//+
Transfinite Curve {4, 2} = 17 Using Progression 1;
//+
Transfinite Curve {1, 3} = 17 Using Progression 1;
//+
Transfinite Curve {5, 6} = 17 Using Progression 1;
//+
Transfinite Curve {4, 2} = 20 Using Progression 1;
//+
Transfinite Curve {1, 3} = 20 Using Progression 1;
//+
Point(8) = {3, 4, 0, 1.0};
//+
Point(9) = {5, 4, 0, 1.0};
//+
Point(10) = {4, 5, 0, 1.0};
//+
Point(11) = {4, 3, 0, 1.0};
//+
Point(12) = {3, 5, 0, 1.0};
//+
Point(13) = {3, 3, 0, 1.0};
//+
Point(14) = {5, 3, 0, 1.0};
//+
Point(15) = {5, 5, 0, 1.0};
//+
Line(7) = {12, 15};
//+
Line(8) = {15, 14};
//+
Line(9) = {14, 13};
//+
Line(10) = {13, 12};
//+
Plane Surface(2) = {1, 2};
//+
Physical Curve("t", 11) = {1};
//+
Physical Curve("b", 12) = {3};
//+
Physical Curve("l", 13) = {4};
//+
Physical Curve("r", 14) = {2};
//+
Physical Curve("c", 9) += {6, 5};
//+
Recursive Delete {
  Curve{7}; 
}
//+
Recursive Delete {
  Curve{10}; 
}
//+
Recursive Delete {
  Point{10}; 
}
//+
Recursive Delete {
  Curve{9}; 
}
//+
Recursive Delete {
  Point{11}; 
}
//+
Recursive Delete {
  Curve{8}; 
}
//+
Recursive Delete {
  Point{9}; 
}
//+
Recursive Delete {
  Point{8}; 
}
//+
Physical Curve("b", 12) += {4, 2, 1, 3};
//+
Physical Curve("c", 9) += {5, 6};
//+
Transfinite Curve {4, 2} = 50 Using Progression 1;
//+
Transfinite Curve {1, 3} = 50 Using Progression 1;
//+
Transfinite Curve {5, 6} = 50 Using Progression 1;
