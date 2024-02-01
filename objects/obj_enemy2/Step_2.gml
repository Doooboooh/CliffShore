/// @description 动画控制 
// 你可以在此编辑器中写入代码 
if hp <= 0
{
	var _defeated =  instance_create_layer(x,y,layer,obj_enemy2_defeated);
	_defeated.image_xscale = sign(move_direction);
	instance_destroy();
}
// 受伤时间
else if hurting
{
	sprite_index = spr_enemy2_hurt;
}
else if attacking
{
	sprite_index = spr_enemy2_attack;
}
else if skilling1
{
	sprite_index = spr_enemy2_skill1;
	image_xscale = sign(move_direction);
}
else if skilling2
{
	sprite_index = spr_enemy2_skill2;
	image_xscale = sign(move_direction);
}
else if walking
{
	sprite_index = spr_enemy2_idle2;
	image_xscale = sign(move_direction);
}
else if idle
{
	sprite_index = spr_enemy2_idle;
}
else
{
	show_debug_message("enemy1 状态错误!");
}






