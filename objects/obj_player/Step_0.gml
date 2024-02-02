/// @description 移动控制
if state == 1
{
	move_x = -hurting_direction*hurting_force;
}
else if state == 5
{
	move_x = 0;
}
else if state == 0
{
	move_x = 0;
}
else if state == 6
{
	move_x = face_direction * move_speed*2.5;
}
else if state == 10
{
	if left_have_wall && left_wall_grab_pressed
	{
		for (var _i = 1; _i <= 5; _i++) 
		{
			if place_meeting(x-12-_i,y,obj_platform_parent) 
			{
				move_x = -_i+1;
				break;
			}
		}
	}
	else if right_have_wall && right_wall_grab_pressed
	{
		for (var _i = 1; _i <= 5; _i++) 
		{
			if place_meeting(x+12+_i,y,obj_platform_parent) 
			{
				move_x = _i-1;
				break;
			}
		}
	}
	else move_x = 0;
}
else
{
	move_x = move_direction * move_speed;
}


if state == 4 && jump_once == 0
{
	jump_once = 1;
	move_y = -jump_speed;
	move_and_collide(move_x,move_y,obj_platform_parent);
}
else if on_ground || state == 6
{
	move_y = 0;
	move_and_collide(move_x,move_y,obj_platform_parent);
}
else if state == 10
{
	move_y = jump_speed/6;
	move_and_collide(move_x,move_y,obj_platform_parent);
}
else//非跳跃帧，空中或者落地
{
	// 可变化跳跃高度
	if space_holding move_y += grav*0.5;
	else move_y += grav;
	
	// 最大下落速度限制
	move_y = min(move_y,jump_speed);
	
	
	// 落地检测，避免卡墙
	if place_meeting(x,y+move_y,obj_platform_parent)&&place_meeting(x,y+2,obj_platform_parent)!=true
	{
		for (var _i = 1; _i <= move_y; _i++) 
		{
			if place_meeting(x,y+_i,obj_platform_parent) 
			{
				y=y+_i-1;
				move_and_collide(move_x,0,obj_platform_parent)
				break;
			}
		}
	}
	else move_and_collide(move_x,move_y,obj_platform_parent)
}



