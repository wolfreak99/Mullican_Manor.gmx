//called during rm_preload
//scrkit_preloader();

show_debug_overlay(true);

globalvar g_cell_size, g_resol_w, g_resol_h, g_resol_zoom, g_window_caption;
g_cell_size = 32;
g_resol_w = 800;
g_resol_h = 600;
g_resol_zoom = 1;
g_window_caption = "Mullican Manor (ALPHA)";
window_set_caption(g_window_caption);
camera_resize(g_resol_w, g_resol_h, g_resol_zoom, true);


globalvar g_camera_x, g_camera_y;
g_camera_x = 0;
g_camera_y = 0;




//Extra stuff

//global Sinewave mechanic, updated via cont_game.
globalvar g_sine_pos;


instance_create(16, 16, cont_game);
room_goto_next();
