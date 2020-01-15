/// @description
/// @param dst_list
/// @param src_list

for( var i = 0; i < StatsFields.Count; i++ ) {
	var sf = argument1[| i];
	
	sfield_apply(argument0[| i], sf[1], sf[2]);
}