/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if instance_exists(obj_player) 
{
	obj_player.attack_jump_once = 0;
	if obj_player.can_shoot && collide_with_enemy
	{
		obj_player.arrow_num += 1;
		obj_player.arrow_num = min(obj_player.arrow_num,4);
	}
}
instance_destroy();



