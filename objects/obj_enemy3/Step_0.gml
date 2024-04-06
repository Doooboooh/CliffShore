/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if state == 1
{
	speed = 1;
	direction = point_direction(obj_player.x, obj_player.y,x, y)
}
else if state == 3
{
	move_distance = move_distance +  speed
	if move_distance > goal_distance
	{
		speed = 0
		state = 0;
		move_distance = 0;
	}
	else
	{
		if speed > 0.5 &&  move_distance > goal_distance-50
		{
			speed -= 0.08;
		}
		else if speed < max_speed
		{
			speed += 0.1
		}
	}
}
show_debug_message("state")
show_debug_message(state)
show_debug_message("move_distance")
show_debug_message(move_distance)
show_debug_message("goal_distance")
show_debug_message(goal_distance)





