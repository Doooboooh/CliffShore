/// @description 动画控制

if hp <= 0
{
	instance_create_layer(x,y,layer,obj_enemy1_defeated);
	instance_destroy();
}
// 受伤时间
else if hurting
{
	sprite_index = spr_enemy1_hurt;
}
else if attacking
{
	sprite_index = spr_enemy1_attack;
}
else if walking
{
	sprite_index = spr_enemy1_walk;
	image_xscale = sign(move_direction);
}
else if idle
{
	sprite_index = spr_enemy1_idle;
}
else
{
	show_debug_message("enemy1 状态错误!");
}



