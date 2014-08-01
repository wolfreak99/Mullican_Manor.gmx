///string_contains_chars(str,string_of_chars)
/***************************************************
  USEAGE:
        checks the string put in to see if it contains only the
        chars in string_of_chars by iterating through string_of_chars,
        and removing each character from the string, and returning true
        if the end string is blank.
        
    VARIABLES:
        STR - The string to check.
        string_of_chars = a string containing all of the letters/numbers/chars.
***************************************************/

var str, chars, char_length, char_pos, i;
str = argument0;
chars = argument1;
char_length = string_length(chars);

for (i = 0; i < char_length; i += 1)
{
    str = string_replace_all(str, string_char_at(chars, i), "");
}

if (string_length(str) == 0)
    return true;
else
    return false;
