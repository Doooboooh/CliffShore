/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if instance_exists(obj_player)
{
	move_x = obj_player.true_move_x;
	move_y = obj_player.move_y;
	if obj_player.left_have_wall ||obj_player.right_have_wall
	{
		x += 0;
		y += move_y;
	}
	else {
		x += move_x;
		y += move_y;
	}
}




