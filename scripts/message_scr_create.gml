///message_scr_create()
global.msg_queue = ds_queue_create();

_message_current_loaded = false;
_message_current = "";
_message_current_typing = "";
_message_current_state = "waiting_for_message";
_message_current_typespeed = 4;
_message_current_typedelay = 4;

_message_current_typepos = 1;
_message_current_typedest = "";
_message_current_typedestlength = 0;
_message_current_wait = 4;
