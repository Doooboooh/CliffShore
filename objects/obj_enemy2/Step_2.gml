/// @description 动画控制

if hp <= 0
{
	instance_create_layer(x,y,layer,obj_enemy2_defeated);
	instance_destroy();
}
// 受伤时间
else if state == 1
{
	sprite_index = spr_enemy2_hurt;
}
else if state == 3
{
	sprite_index = spr_enemy2_walk;
	if move_direction!=0  image_xscale = sign(move_direction);
}
else if state == 0
{
	sprite_index = spr_enemy2_idle;
}



