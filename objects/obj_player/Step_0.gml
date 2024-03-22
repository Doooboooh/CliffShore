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
	//show_debug_message("face_direction"+string(face_direction));
	if (left_have_wall && right_wall_grab_pressed)||(right_have_wall && left_wall_grab_pressed) move_x = face_direction*move_speed;
	else move_x = 0;
}
else if state == 11
{
	move_x = temp_direction * move_speed;
}
else
{
	move_x = move_direction * move_speed;
}

// 横向移动防卡墙？？？
true_move_x = move_x;

if (state == 4) && jump_once == 0
{
	jump_once = 1;
	move_y = -jump_speed;
	move_and_collide(move_x,move_y,obj_platform_parent);
}
else if (state == 11) && jump_once == 0
{
	jump_once = 1;
	move_y = -jump_speed*0.8;
	move_and_collide(move_x,move_y,obj_platform_parent);
}
else if on_ground ||state == 6
{
	move_y = 0;
	move_and_collide(move_x,move_y,obj_platform_parent);
}
else if state == 10
{
	move_y = jump_speed/10;
	move_and_collide(move_x,move_y,obj_platform_parent);
}

else//非跳跃帧，空中或者落地
{
	// 可变化跳跃高度
	if space_holding move_y += grav*0.5;
	else move_y += grav;
	
	// 最大下落速度限制
	move_y = min(move_y,jump_speed);
	
	// 避免卡在天花板
	if place_meeting(x,y+move_y,obj_platform_parent)&&place_meeting(x,y-2,obj_platform_parent)!=true
	{
		for (var _i = 1; _i <= abs(move_y); _i++) 
		{
			if place_meeting(x,y-_i,obj_platform_parent) 
			{
				y=y-_i+1;
				move_y = 0;
				break;
			}
		}
	}
	
	// 电锯反弹
	if instance_exists(obj_knife)
	{
		if (obj_knife.collide_with_saw||obj_knife.collide_with_enemy)&& keyboard_check(ord("S")) && attack_jump_once == 0
		{
			attack_jump_once += 1;
			move_y = -jump_speed*1.3;
		}
	}
	
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



