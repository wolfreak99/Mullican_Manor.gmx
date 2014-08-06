///camera_follow(object_to_follow)
var obj, obj_x, obj_y, border, half_border;
obj = argument0;
border = 8;
half_border = false;
half_div = 3;
outbound = false;

if (instance_exists(obj))
{
    if (view_enabled)
    {
        //Adjust to center of object.
        obj_x = obj.x - obj.sprite_xoffset + (obj.sprite_width / 2);
        obj_y = obj.y - obj.sprite_yoffset + (obj.sprite_height / 2);
        
        if (g_camera_x < obj_x) // Move right
        {
            if ((!half_border) && (g_camera_x + (view_wview[VIEW_CAMERA] / border) < obj_x))
            {
                half_border = true;
                border = border / half_div;
            }
            g_camera_x -= (g_camera_x - obj_x) / border;
        }
        else if (g_camera_x > obj_x) // Move left
        {
            if ((!half_border) && (g_camera_x > obj_x))
            {
                half_border = true;
                border = border / half_div;
            }
            g_camera_x += (obj_x - g_camera_x) / border;
        }
        
        if (g_camera_y < obj_y) // Move down
        {
            if ((!half_border) && (g_camera_y + (view_hview[VIEW_CAMERA] / border) < obj_y))
            {
                half_border = true;
                border = border / half_div;
            }
            g_camera_y -= (g_camera_y - obj_y) / border;
        }
        else if (g_camera_y > obj_y) // Move up
        {
            if ((!half_border) && (g_camera_y > obj_y))
            {
                half_border = true;
                border = border / half_div;
            }
            g_camera_y += (obj_y - g_camera_y) / border;
        }
        
        view_xview[VIEW_CAMERA] = g_camera_x - (view_wview[VIEW_CAMERA] / 2);
        view_yview[VIEW_CAMERA] = g_camera_y - (view_hview[VIEW_CAMERA] / 2);
        
        }

}
