/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if global.room_activated!=noone
{
	if room_get_name(room) == global.room_activated
	{
		state = 1;
		sprite_index = spr_check_point2;
	}
}



