/// @description 动作检查
// 你可以在此编辑器中写入代码 
if instance_exists(obj_player)
{
	if move_direction !=0 && state == 0 
	{
		state = 3;	
	}
	else if move_direction ==0 && (state == 3)
	{
		state =0;
	}
}	
show_debug_message("state"+string(state))








