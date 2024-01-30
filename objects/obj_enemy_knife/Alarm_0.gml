/// @description 拼刀结算
// 你可以在此编辑器中写入代码 

if collide_weapon
{
	sprite_index = spr_enemy_knife_clash;
	visible = true;
	audio_play_sound(snd_sword_clash,0,false);
	alarm_set(1,4);
}
else if collide_player
{
	obj_player.collide_enemy = true;
	obj_player.collide_attack = attack;
	obj_player.collide_attack_force = attack_force;
	obj_player.collide_x = x;
	instance_destroy();
}
else instance_destroy();

