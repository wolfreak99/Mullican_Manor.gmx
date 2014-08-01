//called during rm_preload
//scrkit_preloader();

show_debug_overlay(true);

global.cell_size = 32;
global.resol_w = 800;
global.resol_h = 600;
global.resol_zoom = 1;
global.window_caption = "Mullican Manor (ALPHA)";
window_set_caption(global.window_caption);
camera_resize(global.resol_w, global.resol_h, global.resol_zoom, true);

globalvar g_camera_x, g_camera_y;
g_camera_x = 0;
g_camera_y = 0;

instance_create(16, 16, cont_game);
room_goto_next();
