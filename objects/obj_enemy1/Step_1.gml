/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if abs(obj_player.x-x)<80&& sign(obj_player.x-x)*image_xscale>0
{
	if alarm_get(10) <0
	{
		alarm_set(9,45);
		alarm_set(10,73);
	}
}




