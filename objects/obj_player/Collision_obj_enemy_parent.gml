/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if alarm_get(0)<=0
{
	hp = hp - other.attack;
	hurt_direction = sign(other.x-x);
	hurt_force = other.attack_force;
	
	audio_play_sound(snd_player_hurt,0,false);
	
	alarm_set(0,30);
}






