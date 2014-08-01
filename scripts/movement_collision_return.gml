///movement_collision_return(object, max_distance, is_solid, hspd, vspd, grav)
/***************************************************
  USEAGE:
    Helps with collision of objects.
    Like the movement_collision_solid script, only this one can use
    custom hspeed, vspeed, and gravity variables and have them returned
    in the form of "hspeed_ret", "vspeed_ret", "gravity_ret"
***************************************************/

var obj, max_dist, contact_solid;

obj = argument[0];
max_dist = argument[1];
contact_solid = argument[2];

hspeed_ret = argument[3];
vspeed_ret = argument[4];
gravity_ret = argument[5];

if ((vspeed_ret != 0) or (gravity_ret != 0))
{
    if (place_meeting(x, y + vspeed_ret + gravity_ret, obj))
    {
        if (vspeed_ret < 0)
        {
            move_contact_(A_UP, max_dist, contact_solid);
            vspeed_ret = 0;
        }
        else if (vspeed_ret > 0)
        {
            move_contact_(A_DOWN, max_dist, contact_solid);            
            vspeed_ret = 0;
            gravity_ret = 0;
        }
    }
}

if (hspeed_ret != 0)
{
    if (place_meeting(x + hspeed_ret, y, obj))
    {
        if (hspeed_ret < 0)
        {
            move_contact_(A_LEFT, max_dist, contact_solid);
            hspeed_ret = 0;
        }
        else if (hspeed_ret > 0)
        {
            move_contact_(A_RIGHT, max_dist, contact_solid);
            hspeed_ret = 0;
        }
    }
}
