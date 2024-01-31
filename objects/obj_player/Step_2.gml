// 动画控制
if move_y <= 0 && on_ground==false
{
	rising = true;
	falling = false;
	idle = false;
}
else if move_y> 0
{
	falling = true;
	rising = false;
	idle = false;
}


// 死亡动画
if hp <= 0
{
	instance_create_layer(x,y,layer,obj_player_defeated);
	instance_destroy();
}
// 受伤时间
else if hurting
{
	sprite_index = spr_player_hurt;
}
// 攻击时间
else if attacking
{
	sprite_index = spr_player_attack3;
}
// 攻击时间
else if shooting
{
	sprite_index = spr_player_shooting;
}
else if idle
{
	sprite_index = spr_player_idle;
}
// 掉落时间
else if falling
{
	// 修改动画
	sprite_index = spr_player_falling;
	// 修改人物朝向
	if move_direction != 0 image_xscale = sign(move_direction);
}
// 上升时间
else if jumping
{
	sprite_index = spr_player_jumping;
}
else if rising
{
	// 修改动画
	sprite_index = spr_player_rising;
	// 修改人物朝向
	if move_direction != 0 image_xscale = sign(move_direction);
}
else if running
{
	// 修改动画
	sprite_index = spr_player_run;
	// 修改人物朝向
	if move_direction != 0 image_xscale = sign(move_direction);
}
else
{
	show_debug_message("player1 状态出错!");
}

