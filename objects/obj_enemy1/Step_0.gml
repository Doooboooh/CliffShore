/// @description 位置控制

if hurting
{
	move_x = -hurting_direction*hurting_force;
}
else if attacking
{
	move_x = 0;
}
else if walking
{
	move_x = move_direction*move_speed;
}
else if idle
{
	move_x = 0;
}
else
{
	show_debug_message("enemy1 状态错误!");
}

move_y = 0;

move_and_collide(move_x,move_y,obj_platform);
