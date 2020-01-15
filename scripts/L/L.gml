/// @description 
/// @param fmt
/// @param ...

var text = argument[0];

for( var i = 1; i < argument_count; i++ )
	text = string_replace_all(text, "%" + string(i-1), string(argument[i]));

return text;