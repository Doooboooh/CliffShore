/// @description 动作检查
// 你可以在此编辑器中写入代码 


if instance_exists(obj_player)
{
	attack_pressed = abs(obj_player.x-x)<80&&sign(obj_player.x-x)*image_xscale>0
	if attack_pressed && (state == 0 || state == 3)
	{
		state = 2;
		alarm_set(10,120)
	}
	else if move_direction !=0 && state == 0 
	{
		state = 3;	
	}
	else if move_direction ==0 && (state == 3)
	{
		state =0;
	}
}	
show_debug_message("state"+string(state))








