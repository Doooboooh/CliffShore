/// @description 受伤
// 你可以在此编辑器中写入代码 

if state != 1
{

	hp = hp - other.attack;
	hurting_direction = sign(other.x-x)
	hurting_force = other.attack_force;
	
	state = 1;
	alarm_set(0,20);
	
	audio_play_sound(snd_enemy_hurt,10,false);
}

// Inherit the parent event
event_inherited();

