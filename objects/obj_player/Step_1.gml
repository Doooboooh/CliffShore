// 按键检测
input_x = keyboard_check(ord("D"))-keyboard_check(ord("A"));
input_y = keyboard_check(vk_space)||keyboard_check(ord("K")) ;
space_holding = input_y

if alarm_get(1)<=0 && keyboard_check(ord("J"))
{
	audio_play_sound(snd_sword_swing,0,false);
	instance_create_layer(x,y,layer,obj_knife);
	alarm_set(1,26);
	alarm_set(7,6)
}

if alarm_get(2)<0 && keyboard_check(ord("I"))
{
	audio_play_sound(snd_shoot_arrow,0,false);
	alarm_set(2,25);
}

// 地面检测
if place_meeting(x,y+2,obj_platform) on_ground = true;
else on_ground = false;
if place_meeting(x,y+34,obj_platform) under_ceiling = true;
else under_ceiling = false;

// 碰撞检测
if alarm_get(0)<=0 && collide_enemy
{
	hp = hp - collide_attack;
	hurt_direction = sign(collide_x-x);
	hurt_force = collide_attack_force;
	
	audio_play_sound(snd_player_hurt,0,false);
	
	alarm_set(0,30);
	
	collide_enemy = false;
}

// 拼刀用到的计时
