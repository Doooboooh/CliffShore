// 移动代码

// 受伤时间
if alarm_get(0) > 0
{
	move_x = -hurt_direction*hurt_force;
}
// 攻击时间
else if alarm_get(1) > 0
{
	move_x = move_speed*input_x;
}
else if alarm_get(2) > 0
{
	move_x = move_speed*input_x;
}
else if on_ground 
{
	move_x = move_speed*input_x;
	// 音效
	if alarm_get(4)<=0 && move_x!= 0
	{
		audio_play_sound(snd_run,0,false);
		alarm_set(4,27)
	}
}
else
{
	move_x = move_speed*input_x;
}

if on_ground
{
	if input_y > 0 
	{
		move_y = -jump_speed;
	}
	else move_y = 0;
}
else 
{
	// 可变化跳跃高度
	if space_holding move_y += grav*0.5;
	else move_y += grav;
}


// 下落速度限制
move_y = max(move_y,-jump_speed);

// 靠近地面检测，避免卡住
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
else 
{
	move_and_collide(move_x,move_y,obj_platform)
}
// 卡墙debug
// show_debug_message("当前值：" + string(y));



