/// @description 状态计时
// 你可以在此编辑器中写入代码 
if instance_exists(obj_player)
{
	if sign(obj_player.x-obj_boss3.x)!= 0
	{
		move_direction = sign(obj_player.x-obj_boss3.x)
	}


	if instance_exists(obj_enemy3)
	{
		idle = true;
		walking = false;
		alarm_set(1,60);
	}
	else if walking == false && next_state == 0
	{
		move_distance = max(abs(obj_player.x-obj_boss3.x)-60,0);
		walking = true;
		idle = false;
		alarm_set(1,60);
	}
	else if attacking == false && next_state == 1
	{
		attacking = true;
		idle = false;
		alarm_set(1,65);
	}
	else if skilling1 == false && next_state == 2
	{
		move_distance = move_direction*(abs(obj_player.x-obj_boss3.x)+60);
		skilling1 = true;
		idle = false;
		alarm_set(1,180);
	}
	else if skilling2 == false && next_state == 3
	{
		skilling2 = true;
		idle = false;
		alarm_set(1,60);
	}



}

