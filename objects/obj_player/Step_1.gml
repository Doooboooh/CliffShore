/// @description 按键输入和状态选择
// 按键检测
move_direction = keyboard_check(ord("D"))-keyboard_check(ord("A"));
if move_direction != 0 face_direction = move_direction;
jump_pressed = keyboard_check(vk_space)||keyboard_check(ord("K")) ;
attack_pressed =  keyboard_check(ord("J"));
shoot_pressed =  keyboard_check(ord("I"));
crouch_pressed = keyboard_check(ord("S"));
dash_pressed = keyboard_check(ord("L"));
space_holding = jump_pressed;

// 地面检测
if place_meeting(x,y+2,obj_platform_parent) on_ground = true;
else on_ground = false;
if place_meeting(x,y+34,obj_platform_parent) under_ceiling = true;
else under_ceiling = false;

// 状态控制
if attack_pressed&&  once && (state == 0 || state == 5 || state == 7 || state == 8 || state == 9)
{
	state = 2;
	alarm_set(1,18);
}
else if shoot_pressed&& once && (state == 0 || state == 5 || state == 7 || state == 8 || state == 9)
{
	state = 3;
	alarm_set(4,18);
	alarm_set(5,10);
}
else if jump_pressed && once && jump_num<1 && (state == 0 || state == 5 ||state == 8)
{
	state = 4;
	alarm_set(3,5);
	jump_num += 1;
}
else if dash_pressed && once && dash_num<1
{
	state = 6;
	alarm_set(2,24);
	dash_num += 1;
}
else if on_ground
{
	if crouch_pressed && (state == 0 || state == 5)
	{
		state = 5;
	}
	else if move_direction!=0  && (state == 0 || state == 5|| state == 9)
	{
		state = 8;
	}
	else if move_direction ==0 && (state == 8 || state == 5||state == 9)
	{
		state =0;
	}
}
else if on_ground == false 
{
	if move_y < 0  && (state == 0 ||state == 5 ||state == 8)
	{
		state = 7;
	}
	else if move_y>= 0  && (state == 0 ||state == 5 ||state == 7||state == 8)
	{
		state = 9;
	}
}

if on_ground 
{
	jump_num =0;
	if state != 6 dash_num = 0;
}
show_debug_message("on_ground"+string(on_ground))
show_debug_message("state"+string(state))