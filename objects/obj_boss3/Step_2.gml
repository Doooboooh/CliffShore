/// @description 动画控制 
// 你可以在此编辑器中写入代码 
if hp <= 0
{
	audio_stop_sound(snd_nizhuan);
	var _defeated =  instance_create_layer(x,y,layer,obj_boss3_defeated);
	_defeated.image_xscale = sign(move_direction);
	instance_destroy();
}
// 受伤时间
else if hurting
{
	sprite_index = spr_boss3_hurt;
}
else if attacking
{
	sprite_index = spr_boss3_attack;
}
else if skilling1
{
	sprite_index = spr_boss3_skill1;
	image_xscale = sign(move_direction);
}
else if skilling2 && skilling2_once
{
	skilling2_once = false;
	if instance_exists(obj_player)
	{
		instance_create_layer(obj_player.x-150,obj_player.y,layer,obj_enemy3_appear);
		instance_create_layer(obj_player.x+150,obj_player.y,layer,obj_enemy3_appear);
		instance_create_layer(obj_player.x,obj_player.y,layer-150,obj_enemy3_appear);
	}
	sprite_index = spr_boss3_skill2;
	image_xscale = sign(move_direction);
}
else if walking
{
	sprite_index = spr_boss3_idle2;
	image_xscale = sign(move_direction);
}
else if idle
{
	sprite_index = spr_boss3_idle3;
}
else
{
	show_debug_message("enemy1 状态错误!");
}






