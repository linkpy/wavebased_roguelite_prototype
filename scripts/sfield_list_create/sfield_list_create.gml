/// @description

var list = ds_list_create();

for( var i = 0; i < StatsFields.Count; i++ )
	ds_list_add(list, sfield_create(1, 1, 0));

return list;