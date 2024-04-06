/// @description 冲刺计时
// 你可以在此编辑器中写入代码 
if instance_exists(obj_player) && state == 2
{
	state = 3
	direction = point_direction(x, y, obj_player.x, obj_player.y)
	speed = 0
	goal_distance = distance_to_object(obj_player)+50
}






