// 动画控制




// 死亡动画
if hp <= 0
{
	instance_create_layer(x,y,layer,obj_player_defeated);
	instance_destroy();
}
// 受伤时间
else if state == 1
{
	sprite_index = spr_player_hurt;
}
// 攻击时间
else if state == 2
{
	sprite_index = spr_player_attack3;
	image_xscale = face_direction;
	instance_create_layer(x,y,layer,obj_knife);
}
// 攻击时间
else if state == 3
{
	sprite_index = spr_player_shooting;
	image_xscale = face_direction;
}
else if state == 5
{
	sprite_index = spr_player_crouch;
	image_xscale = face_direction;
}
else if state == 6
{
	sprite_index = spr_player_dash;
	image_xscale = face_direction;
}
else if state == 0
{
	sprite_index = spr_player_idle;
}
// 掉落时间
else if state == 9
{
	// 修改动画
	sprite_index = spr_player_falling;
	// 修改人物朝向
	image_xscale = face_direction;
}
// 上升时间
else if state == 4
{
	sprite_index = spr_player_jumping;
}
else if state == 7
{
	// 修改动画
	sprite_index = spr_player_rising;
	// 修改人物朝向
	image_xscale = face_direction;
}
else if state == 8
{
	// 修改动画
	sprite_index = spr_player_run;
	// 修改人物朝向
	image_xscale = face_direction;
}
else
{
	show_debug_message("player1 状态出错!");
}

