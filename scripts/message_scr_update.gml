///message_scr_update()

/*global.msg_queue = ds_queue_create();

_message_current_loaded = false;
_message_current = "";
_message_current_state = ST_OFF;
_message_current_typing = "";
_message_current_typespeed = 4;
_message_current_typepos = 0;
_message_current_wait = 4;
_message_current_dest = ""; //Destination, what to type to.
*/

switch (_message_current_state)
{
    case "waiting_for_message":
        if !ds_queue_empty(global.msg_queue)
        {
            _message_current = string(ds_queue_head(global.msg_queue));
            ds_queue_dequeue(global.msg_queue);
            _message_current_state = "typing_message";
        }
        break;
    case "typing_message":
        if (_message_current_typepos <= string_length(_message_current))
        {
            if (_message_current_typedelay < _message_current_typespeed)
            {
                _message_current_typedelay += 1;
            }
            else
            {
                _message_current_typedelay = 0;
                _message_current_typing += string_char_at(_message_current, _message_current_typepos);
                _message_current_typepos += 1;
            }
        }
        else
        {
            _message_current_typepos = 0;
            _message_current_typedelay = 0;
            _message_current_typing = _message_current;
            _message_current_state = "input_wait";
        }
        
        if (key_pressed(vk_anykey))
        {
            _message_current_typepos = 0;
            _message_current_typedelay = 0;
            _message_current_typing = _message_current;
            _message_current_state = "input_wait";
        }
        break;
    case "input_wait":
        if (key_pressed(vk_anykey))
        {
            _message_current_state = "clear_message";
        }
        break;
    case "clear_message":
        _message_current_typing = "";
        _message_current_typepos = 1;
        _message_current = "";
        _message_current_typedelay = 0;
        ds_queue_dequeue(global.msg_queue);
        _message_current_state = "waiting_for_message";
        break;
}
