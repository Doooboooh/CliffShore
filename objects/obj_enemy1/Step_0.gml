

if alarm_get(0) > 0
{
	move_x = -hurt_direction*hurt_force;
}
else if alarm_get(10)>0
{
	move_x = 0;
}
else 
{
	move_x = move_direction*move_speed;
}
move_y = jump_direction*jump_speed;

move_and_collide(move_x,move_y,obj_platform)

