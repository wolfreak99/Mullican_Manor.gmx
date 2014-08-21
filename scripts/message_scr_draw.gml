///message_scr_draw()
if (_message_current != "")
{
    var rect_calc, spr, sprw, sprh, sprbl, sprbt, sprxo, spryo, vwv, vhv;
    spr = spr_textbox;
    sprw = sprite_get_width(spr);
    sprh = sprite_get_height(spr);
    sprbl = sprite_get_bbox_left(spr);
    sprbt = sprite_get_bbox_top(spr);
    sprxo = sprite_get_xoffset(spr);
    spryo = sprite_get_yoffset(spr);
    vwv = view_wview[VIEW_CAMERA];
    vhv = view_hview[VIEW_CAMERA];
    rect_calc = rectangle_calculate((vwv / 2) - (sprw / 2), vhv - (sprh), sprw, sprh, 2, 12, fa_left, fa_left);
    draw_set_2(fnt_consolas_15, 0.9, c_black);
    draw_sprite(spr, 0, rect_calc[0], rect_calc[1]);
    draw_set_1(1, c_white);
    draw_text(rect_calc[4] + sprbl, rect_calc[5] + sprbt, _message_current_typing);
}
