/// @description 按键输入和状态选择
// 按键检测
move_direction = keyboard_check(ord("D"))-keyboard_check(ord("A"));
jump_pressed = keyboard_check(vk_space)||keyboard_check(ord("K")) ;
attack_pressed =  keyboard_check(ord("J"));
shoot_pressed =  keyboard_check(ord("I"));
space_holding = jump_pressed;

// 地面检测
if place_meeting(x,y+2,obj_platform) on_ground = true;
else on_ground = false;
if place_meeting(x,y+34,obj_platform) under_ceiling = true;
else under_ceiling = false;

// 状态控制
if attack_pressed&&attacking==false
{
	attacking = true;
	idle = false;
	alarm_set(1,18);
	alarm_set(2,8);
}
else if shoot_pressed&&shooting == false
{
	shooting = true;
	idle = false;
	alarm_set(4,18);
	alarm_set(5,10);
}
else if jump_pressed && jumping == false && jump_num<1
{
	jumping = true;
	idle = false;
	alarm_set(3,5);
	jump_num += 1;
}
else if move_direction!=0 && on_ground
{
	running = true;
	rising = false;
	falling = false;
	idle = false;
}
else if move_direction == 0 && on_ground
{
	idle = true;
	rising = false;
	falling = false;
}

if on_ground jump_num =0;
