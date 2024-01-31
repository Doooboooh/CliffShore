/// @description 动作检查
// 你可以在此编辑器中写入代码 


if abs(obj_player.x-x)<80&&sign(obj_player.x-x)*image_xscale>0&& attacking ==false
{
	attacking = true;
	attacking_direction = image_xscale;
	alarm_set(9,35);
	alarm_set(10,80);
}
else if idle
{
	walking = true;
	idle = false;
	alarm_set(11,180);
}







