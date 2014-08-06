///scr_collision_1(object, max_dist, is_solid)
var obj, max_dist, is_solid, ix, iy, loop;

obj = argument0;
max_dist = argument1;
is_solid = argument2;
loop = true;

if (move_y != 0)
{
    for (iy = 0; (abs(iy) < abs(move_y)) && loop; iy += 1 * sign(move_y))
    {
        if (place_meeting(x, y + iy, obj))
        {
            if (move_y < 0)
            {
                move_contact_(A_UP, max_dist, is_solid);
                move_y = 0;
                loop = false;
            }
            else if (move_y > 0)
            {
                move_contact_(A_DOWN, max_dist, is_solid);
                move_y = 0;
                loop = false;
            }
        }
    }
}
loop = true;
if (move_x != 0)
{
    for (ix = 0; (abs(ix) < abs(move_x)) && loop; ix += 1 * sign(move_x))
    {
        if (place_meeting(x + ix, y, obj))
        {
            if (move_x < 0)
            {
                move_contact_(A_LEFT, max_dist, is_solid);
                move_x = 0;
                loop = false;
            }
            else if (move_x > 0)
            {
                move_contact_(A_RIGHT, max_dist, is_solid);
                move_x = 0;
                loop = false;
            }
        }
    }
}
