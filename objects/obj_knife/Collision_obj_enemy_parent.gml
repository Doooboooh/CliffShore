/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

collide_with_enemy = true;
if instance_exists(obj_player) 
{
	obj_player.dash_num =0;
	obj_player.jump_num = min(obj_player.jump_num,1);
}


