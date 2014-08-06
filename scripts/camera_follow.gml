///camera_follow(object_to_follow)
var obj, obj_x, obj_y, border;
obj = argument0;
border = 8;
if (instance_exists(obj))
{
    if (view_enabled)
    {
        obj_x = obj.x - obj.sprite_xoffset + (obj.sprite_width / 2);
        obj_y = obj.y - obj.sprite_yoffset + (obj.sprite_height / 2);
        
        if (g_camera_x < obj.x)
            g_camera_x -= (g_camera_x - obj_x) / border;
        else if (g_camera_x > obj_x)
            g_camera_x += (obj_x - g_camera_x) / border;
        
        if (g_camera_y < obj_y)
            g_camera_y -= (g_camera_y - obj_y) / border;
        else if (g_camera_y > obj_y)
            g_camera_y += (obj_y - g_camera_y) / border;
        
        view_xview[VIEW_CAMERA] = g_camera_x - (view_wview[VIEW_CAMERA] / 2);
        view_yview[VIEW_CAMERA] = g_camera_y - (view_hview[VIEW_CAMERA] / 2);
        //background_x[0] = view_xview[VIEW_CAMERA]
        //background_y[0] = view_yview[VIEW_CAMERA]
    }
}
