/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if instance_exists(obj_player)
{
	if obj_player.y >= y+0.5
	{
		sprite_index = spr_platform2_air;
	}
	else sprite_index = spr_platform2;
}

if keyboard_check(ord("K"))&&keyboard_check(ord("S")) sprite_index = spr_platform2_air;




