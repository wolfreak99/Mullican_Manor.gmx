///scr_collision_wiggle(object, check_x, check_y, distance_check, wiggle_speed)
/***************************************************
  USEAGE:
    This see's if the player is heading in a direction (via axis) and
    if they are running into a wall with a nearby space free, shifts the direction (via move)
    by the amount set by wiggle speed. This is to help with getting into small
    corridors etc without having to fight with wiggling back and forth.
    
  VARIABLES:
    object - what object to check for if place_meeting..
    distance_check - the amount of pixels relative to the placement to check
            (0 defaults to 16)
    check_x - what to check for to see if we should shift (i.e. player is axis_x)
    check_y - what to check for to see if we should shift (i.e. player is axis_y)
    wiggle_speed - the amount to shift the character if it's attempting to wiggle in. (default is 1)
***************************************************/

var vx, vy, ix, iy, check, loop, wiggle_speed;
loop = true;

obj = argument[0];
do_x = argument[1];
do_y = argument[2];
vx = sign(do_x);
vy = sign(do_y);

check = 16;
wiggle_speed = 1;
if (argument_count > 3)
{
    check = argument[3];
    if (argument_count > 4)
        wiggle_speed = argument[4];
}


if (do_x != 0)
{
    if (place_meeting(x + vx, y, obj))
    {
        loop = true;
        for (iy = -check; (iy < check) && loop; iy += 1)
        {
            if (!place_meeting(x + vx, y + iy, obj))
            {
                move_y += sign(iy) * wiggle_speed;
                exit;
                loop = false;
            }
        }
    }
}
if (do_y != 0)
{
    if (place_meeting(x, y + vy, obj))
    {
        loop = true;
        for (ix = -check; (ix < check) && loop; ix += 1)
        {
            if (!place_meeting(x + ix, y + vy, obj))
            {
                move_x += sign(ix) * wiggle_speed;
                exit;
                loop = false;
            }
        }
    }
}
