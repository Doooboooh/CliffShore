/// @description 位置控制

if state == 1
{
	move_x = -hurting_direction*hurting_force;
}
else if state == 3
{
	move_x = move_direction*move_speed;
}
else if state == 0
{
	move_x = 0;
}
else
{
	show_debug_message("enemy2 状态错误!");
}

if on_ground
{
	move_y = 0;
}
else
{
	move_y += grav;
}

move_and_collide(move_x,move_y,obj_platform);
