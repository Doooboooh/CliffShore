/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if alarm_get(0)<=0
{
	hp = hp - other.attack;
	hurt_direction = sign(other.x-x);
	hurt_force = other.attack_force;
	
	audio_play_sound(snd_enemy_hurt,0,false);
	
	show_debug_message("Enemy hp is: " + string(hp));
	alarm_set(0,20);
}

