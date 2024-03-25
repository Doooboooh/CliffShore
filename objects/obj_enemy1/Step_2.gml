/// @description 动画控制

if hp <= 0
{
	instance_create_layer(x,y,layer,obj_enemy1_defeated);
	if instance_exists(_enemy_knife)
	{
		instance_destroy(_enemy_knife)
	}
	instance_destroy();
}
// 受伤时间
else if state == 1
{
	sprite_index = spr_enemy1_hurt;
	if instance_exists(_enemy_knife)
	{
		instance_destroy(_enemy_knife)
	}
}
else if state == 2 && once
{
	once = false;
	sprite_index = spr_enemy1_attack;
	_enemy_knife = instance_create_layer(x,y,layer,obj_enemy_knife);
	_enemy_knife.image_xscale = image_xscale;
}
else if state == 3
{
	sprite_index = spr_enemy1_walk;
	if move_direction!=0  image_xscale = sign(move_direction);
}
else if state == 0
{
	sprite_index = spr_enemy1_idle;
}



