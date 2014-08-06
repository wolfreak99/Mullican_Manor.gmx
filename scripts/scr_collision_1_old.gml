///scr_collision_1(object, max_dist, is_solid)
var obj, max_dist, is_solid;

obj = argument0;
max_dist = argument1;
is_solid = argument2;

if (move_y != 0)
{
    if (place_meeting(x, y + move_y, obj))
    {
        if (move_y < 0)
        {
            move_contact_(A_UP, max_dist, is_solid);
            move_y = 0;
        }
        else if (move_y > 0)
        {
            move_contact_(A_DOWN, max_dist, is_solid);
            move_y = 0;
        }
    }
}
if (move_x != 0)
{
    if (place_meeting(x + move_x, y, obj))
    {
        if (move_x < 0)
        {
            move_contact_(A_LEFT, max_dist, is_solid);
            move_x = 0;
        }
        else if (move_x > 0)
        {
            move_contact_(A_RIGHT, max_dist, is_solid);
            move_x = 0;
        }
    }
}
