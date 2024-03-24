/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if file_exists("checkpoint.ini") file_delete("checkpoint.ini");
if file_exists("checkpoint.ini")
{
	ini_open("checkpoint.ini");
	
	var _room =  ini_read_real("player","room","rm_1_1");
	room_goto(asset_get_index(_room));
	global.room_activated = _room;
	
	var _player = instance_create_layer(x,y,layer,obj_player);
	_player.x = ini_read_real("player","x",32);
	_player.y = ini_read_real("player","y",160);
	_player.hp = ini_read_real("player","hp",10);
	_player.arrow_num = ini_read_real("player","arrow_num",0);
	if ini_read_real("player","can_attack",0)==1 _player.can_attack = true;
	else _player.can_attack = false;
	if ini_read_real("player","can_shoot",0)==1 _player.can_shoot = true;
	else _player.can_shoot = false;
	if ini_read_real("player","can_dash",0)==1 _player.can_dash = true;
	else _player.can_dash = false;
	if ini_read_real("player","can_doublejump",0)==1 _player.can_doublejump = true;
	else _player.can_doublejump = false;
	if ini_read_real("player","can_slidewall",0)==1 _player.can_slidewall = true;
	else _player.can_slidewall = false;
	
	ini_close();
}
else// 新存档
{	
	room_goto(rm_1_1);
	
	var _player = instance_create_layer(32,160,layer,obj_player);
	
	global.room_activated = noone;
}

audio_play_sound(snd_bgm,5,true);


