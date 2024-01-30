// 动画控制

// 死亡动画
if hp <= 0
{
	instance_create_layer(x,y,layer,obj_player_defeated);
	instance_destroy();
}
// 受伤时间
else if alarm_get(0) > 0
{
	sprite_index = spr_player_hurt;
	image_xscale = -hurt_direction;
}
// 攻击时间
else if alarm_get(1) >0
{
	sprite_index = spr_player_attack3;
	if move_x != 0 image_xscale = sign(move_x);
}
// 攻击时间
else if alarm_get(2) >0
{
	sprite_index = spr_player_attack4;
	if move_x != 0 image_xscale = sign(move_x);
}
else if alarm_get(3)>0
{
	sprite_index = spr_player_attack4_after;
	if move_x != 0 image_xscale = sign(move_x);
}
// 掉落时间
else if move_y > 0
{
	// 修改动画
	sprite_index = spr_player_falling;
	// 修改人物朝向
	if move_x != 0 image_xscale = sign(move_x);
}
// 上升时间
else if move_y < 0
{
	// 修改动画
	sprite_index = spr_player_rising;
	// 修改人物朝向
	if move_x != 0 image_xscale = sign(move_x);
}
else if move_x != 0
{
	// 修改动画
	sprite_index = spr_player_run;
	// 修改人物朝向
	image_xscale = sign(move_x);

}
else
{
	// 修改动画
	sprite_index = spr_player_idle;
}


