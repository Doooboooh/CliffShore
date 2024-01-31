/// @description 移动控制
if hurting
{
	move_x = -hurt_direction*hurting_force;
}
else if attacking
{
	move_x = 0;
}
else if jumping||running||falling
{
	move_x = move_direction * move_speed;
}
else if idle
{
	move_x = 0;
}
else
{
	show_debug_message("player1 状态错误!");
}

if jumping && jump_once == 0
{
	jump_once = 1;
	move_y = -jump_speed;
	move_and_collide(move_x,move_y,obj_platform);
}
else if on_ground
{
	move_y = 0;
	move_and_collide(move_x,move_y,obj_platform);
}
else//非跳跃帧，空中或者落地
{
	// 可变化跳跃高度
	if space_holding move_y += grav*0.5;
	else move_y += grav;
	
	// 最大下落速度限制
	move_y = min(move_y,jump_speed);
	
	
	// 落地检测，避免卡墙
	if place_meeting(x,y+move_y,obj_platform)&&place_meeting(x,y+2,obj_platform)!=true
	{
		for (var _i = 1; _i <= move_y; _i++) 
		{
			if place_meeting(x,y+_i,obj_platform) 
			{
				y=y+_i-1;
				move_and_collide(move_x,0,obj_platform)
				break;
			}
		}
	}
	else move_and_collide(move_x,move_y,obj_platform)
}



