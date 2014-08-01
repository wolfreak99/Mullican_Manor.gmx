///scr_ts_wallgen(inverted, right, down, left, up)
/***************************************************
  IMAGE INDEX: 
  0 : whitespace
  1 : top left corner wall
  2 : Blackspace
  1 : top left corner free
  
 ***************************************************/
_x = 16 + ((i mod rows) * sprwid);
_y = 16 + ((i div rows) * sprwid);
if (argument0)
    inv = 2
else
    inv = 0
draw_sprite_ext(spr, inv, _x, _y, 1, 1, 0, c_white, 1); // Draw whitespace..
if (argument1)
    draw_sprite_ext(spr, inv + 1, _x, _y, 1, 1, 0, c_white, 1);
if (argument2)
    draw_sprite_ext(spr, inv + 1, _x, _y, 1, 1, 90, c_white, 1);
if (argument3)
    draw_sprite_ext(spr, inv + 1, _x, _y, 1, 1, 180, c_white, 1);
if (argument4)
    draw_sprite_ext(spr, inv + 1, _x, _y, 1, 1, 270, c_white, 1);

i += 1;
