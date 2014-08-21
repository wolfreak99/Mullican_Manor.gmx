///camera_resize(width, height, zoom, set_globally)
/***************************************************
  USEAGE: Resize the main view used for the camera (which is view 1).
  Temporary placeholder, will be adding more to this later on.
 ***************************************************/
var i, zoom, width, height, wview, hview, wport, hport, do_global;
width = argument0;
height = argument1;
zoom = argument2;
do_global = argument3;

//Do not divide by 0..
if (zoom == 0)
    zoom = 1;

wview = width / zoom;
hview = height / zoom;
wport = width;
hport = height;

if (do_global)
{
    g_resol_w = width;
    g_resol_h = height;
    for (i = 0; room_exists(i); i += 1)
    {
        room_set_view_enabled(i, true);
        room_set_view(i, VIEW_CAMERA, true, 0, 0, wview, hview, 0, 0, wport, hport, 0, 0, 0, 0, noone);
    }
    window_set_size(g_resol_w, g_resol_h);
}

view_wview[VIEW_CAMERA] = wview;
view_hview[VIEW_CAMERA] = hview;
view_wport[VIEW_CAMERA] = wport;
view_hport[VIEW_CAMERA] = hport;

view_wview = wview;
view_hview = hview;
view_wport = wport;
view_hport = hport;
