///get_integer_custom(name,var,def)
/***************************************************
  USEAGE:
    Another personal script to contribute to my laziness.
    This allows me to use get integer in the form I generally use it for.
  VARIABLES:
    name = the visible name/description of the variable.
    var = the variable we want to display the amount of.
    def = generally i use 0 but in the event i choose not to... this.
***************************************************/
var cur, ret;
cur = string_replace_all(string_format(argument1, 6, 4), " ", "0");
ret = get_integer("Set value for " + string_upper(argument0) + ":  [Current: " + cur + " ]", argument2);
return ret;
