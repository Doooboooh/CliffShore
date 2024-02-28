/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

var _word = instance_create_layer(x,y-10,layer,obj_word);
_word.words = "Press L to dash"
obj_player.can_dash = true;

// 存档
if file_exists("checkpoint.ini")
{
	ini_open("checkpoint.ini");
	ini_write_string("player","room",room_get_name(room));
	ini_write_real("player","x",other.x);
	ini_write_real("player","y",other.y);
	ini_write_real("player","hp",other.hp);
	ini_write_real("player","arrow_num",other.arrow_num);
	ini_write_real("player","can_attack",other.can_attack);
	ini_write_real("player","can_shoot",other.can_shoot);
	ini_write_real("player","can_dash",other.can_dash);
	ini_write_real("player","can_doublejump",other.can_doublejump);
	ini_write_real("player","can_slidewall",other.can_slidewall);
	ini_close();
}

instance_destroy();




