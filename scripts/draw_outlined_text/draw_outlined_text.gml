/// @description
/// @param x
/// @param y
/// @param txt
/// @param outline_col
/// @param col
/// @param sx
/// @param sy
/// @param rot

var xx = argument0;
var yy = argument1;
var txt = argument2;
var sx = argument5;
var sy = argument6;
var rot = argument7;

draw_set_color(argument3);
draw_text_transformed(xx-sx, yy-sy, txt, sx, sy, rot);
draw_text_transformed(xx,    yy-sy, txt, sx, sy, rot);
draw_text_transformed(xx+sx, yy-sy, txt, sx, sy, rot);
draw_text_transformed(xx+sx, yy,    txt, sx, sy, rot);
draw_text_transformed(xx+sx, yy+sy, txt, sx, sy, rot);
draw_text_transformed(xx,    yy+sy, txt, sx, sy, rot);
draw_text_transformed(xx-sx, yy+sy, txt, sx, sy, rot);
draw_text_transformed(xx-sx, yy,    txt, sx, sy, rot);

draw_set_color(argument4);
draw_text_transformed(xx, yy, txt, sx, sy, rot);