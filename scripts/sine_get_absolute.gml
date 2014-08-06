///sine_get_absolute(offset, amplitude)
/***************************************************
  USEAGE:
    Creates a sine value of the sine increment and a custom offset.
    It then converts -1...1 to 0-amplitude.
***************************************************/

return ((sin(g_sine_pos + argument0) / 2) + 0.5) * argument1;
