// 动画控制



if hp <= 0
{
	instance_create_layer(x,y,layer,obj_enemy1_defeated);
	instance_destroy();
}
// 受伤时间
else if alarm_get(0)>0
{
	sprite_index = spr_enemy1_hurt;
	image_xscale = -hurt_direction;
}
else if alarm_get(10)>0
{
	sprite_index = spr_enemy1_attack;
}
else if move_x != 0
{
	sprite_index = spr_enemy1_walk;
	image_xscale = sign(move_x)
}
else 
{
	sprite_index = spr_enemy1_idle;
}



