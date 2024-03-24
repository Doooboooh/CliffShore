/// @description 按键输入和状态选择
// 按键检测
if global.chat_is_over == true
{
	right_wall_grab_pressed = keyboard_check(ord("D"));
	left_wall_grab_pressed = keyboard_check(ord("A"));
	move_direction = right_wall_grab_pressed-left_wall_grab_pressed;
	if move_direction != 0 face_direction = move_direction;
	jump_pressed = keyboard_check_pressed(vk_space)||keyboard_check_pressed(ord("K")) ;
	attack_pressed = keyboard_check(ord("J"))&&can_attack;
	shoot_pressed =  keyboard_check(ord("I"))&&can_shoot;
	crouch_pressed = keyboard_check(ord("S"));
	dash_pressed = keyboard_check(ord("L"))&&can_dash;
	space_holding = keyboard_check(vk_space)||keyboard_check(ord("K"))
}
else 
{
	right_wall_grab_pressed = false;
	left_wall_grab_pressed = false;
	move_direction = right_wall_grab_pressed-left_wall_grab_pressed;
	if move_direction != 0 face_direction = move_direction;
	jump_pressed = false;
	attack_pressed =false;
	shoot_pressed =  false;
	crouch_pressed =false;
	dash_pressed =false;
	space_holding = false;
}
// 地面检测
if place_meeting(x,y+2,obj_platform_parent) on_ground = true;
else on_ground = false;
if place_meeting(x,y-5,obj_platform_parent) under_ceiling = true;
else under_ceiling = false;
//show_debug_message("underceiling"+string(under_ceiling));
// 墙体检测
if place_meeting(x-2,y,obj_platform_parent) left_have_wall = true;
else left_have_wall = false;
if place_meeting(x+2,y,obj_platform_parent) right_have_wall = true;
else right_have_wall = false;

//
if can_doublejump max_jump_num = 2;
else max_jump_num = 1;

//show_debug_message("jump_num"+string(jump_num));
// 状态控制
if attack_pressed && attack_ready &&  (state == 0 || state == 5 || state == 7 || state == 8 || state == 9)
{
	state = 2;
	attack_ready = false;
	alarm_set(1,18);// 18
	alarm_set(8,24);// 
	audio_play_sound(snd_sword_swing,10,false);
}
else if shoot_pressed&& (state == 0 || state == 5 || state == 7 || state == 8 || state == 9) && arrow_num >=1
{
	state = 3;
	arrow_num -= 1;
	alarm_set(4,18);
	alarm_set(5,10);
	audio_play_sound(snd_shoot_arrow,10,false);
}
else if jump_pressed && jump_num <max_jump_num && (state == 0  ||state == 7||state == 8 ||state == 9||state == 10)
{
	
	if state == 10 
	{
		temp_direction = -face_direction;
		face_direction = temp_direction;
		state = 11;
		alarm_set(6,10);
		jump_num += 1;
	}
	else
	{	state = 4;
		alarm_set(3,5);
		jump_num += 1;
	}
}
else if dash_pressed && dash_ready && dash_num<1
{
	state = 6;
	dash_ready = false;
	alarm_set(2,16);
	alarm_set(9,26);
	dash_num += 1;
}
else if on_ground
{
	if crouch_pressed && (state == 0 || state == 5)
	{
		state = 5;
	}
	else if move_direction!=0  && (state == 0 || state == 5||state == 7|| state == 9 || state == 10)
	{
		state = 8;
		audio_play_sound(snd_run,10,true);
	}
	else if move_direction ==0 && (state == 5 ||state == 7|| state == 8||state == 9 || state == 10 )
	{
		state =0;
	}
}
else if on_ground == false 
{
	if right_wall_grab_pressed && right_have_wall && (state == 7 ||state == 9) && can_slidewall
	{
		state = 10;
	}
	else if left_wall_grab_pressed && left_have_wall && (state == 7 ||state == 9) && can_slidewall
	{
		state = 10;
	}
	else if move_y < 0  && (state == 0 ||state == 5 ||state == 8)
	{
		state = 7;
	}
	else if state == 10 && (left_have_wall == false&&right_have_wall == false)
	{
		state = 9;
	}
	else if move_y>= 0  && (state == 0 ||state == 5 ||state == 7||state == 8) || (state == 10 && (left_have_wall&&right_wall_grab_pressed)||(right_have_wall&&left_wall_grab_pressed))
	{
		state = 9;
	}
}

if (on_ground&&state == 0||state == 8) ||state == 10
{
	jump_num =0;
	if state != 6 dash_num = 0;
}

if state != 8 audio_stop_sound(snd_run);
//show_debug_message("on_ground"+string(on_ground))
//show_debug_message("state"+string(state))