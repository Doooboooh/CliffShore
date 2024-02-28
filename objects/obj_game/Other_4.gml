/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if room_get_name(room) == "rm_2_4"
{
	audio_stop_sound(snd_bgm);
	audio_play_sound(snd_bgm2,5,true);
}
else if room_get_name(room) == "rm_4_2"
{
	audio_play_sound(snd_nizhuan,5,true);
}



