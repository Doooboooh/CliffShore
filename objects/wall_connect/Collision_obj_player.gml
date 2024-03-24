/// @description 房间切换
// 你可以在此编辑器中写入代码 
var _block_size = 32;
var _room_name = room_get_name(room);
if _room_name == "rm_1_1" && obj_player.move_x>0
{
	room_goto(rm_1_2);
	obj_player.x = 16;
	obj_player.y = 192;
}
else if _room_name == "rm_1_2" 
{
	if  obj_player.move_x<0 && obj_player.x<room_width/2
	{
		room_goto(rm_1_1);
		obj_player.x = 304;
		obj_player.y = 160;
	}
	else if obj_player.move_x>0 && obj_player.x>room_width/2
	{
		room_goto(rm_1_3);
		obj_player.x = 16;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_1_3"
{
	if  obj_player.move_x<0 && obj_player.x<room_width/2
	{
		room_goto(rm_1_2);
		obj_player.x = 464;
		obj_player.y = 224;
	}
	else if obj_player.move_x>0 && obj_player.x>room_width/2
	{
		room_goto(rm_1_4);
		obj_player.x = 16;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_1_4"
{
	if  obj_player.move_x<0 && obj_player.x<room_width/2
	{
		room_goto(rm_1_3);
		obj_player.x = 464;
		obj_player.y = 224;
	}
	else if obj_player.move_x>0 && obj_player.x>room_width/2
	{
		room_goto(rm_1_5);
		obj_player.x = 16;
		obj_player.y = 480;
	}
}
else if _room_name == "rm_1_5"
{
	if  obj_player.move_x<0 && obj_player.x<room_width/2
	{
		room_goto(rm_1_4);
		obj_player.x = 464;
		obj_player.y = 224;
	}
	else if obj_player.move_x>0 && obj_player.x>room_width/2
	{
		room_goto(rm_1_6);
		obj_player.x = 16;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_1_6"
{
	if  obj_player.move_x<0 && obj_player.x<_block_size
	{
		room_goto(rm_1_5);
		obj_player.x = 1264;
		obj_player.y = 288;
	}
	else if obj_player.move_x>0 && obj_player.x>room_width-_block_size
	{
		room_goto(rm_1_6_1);
		obj_player.x = 16;
		obj_player.y = 480;
	}
	else 
	{
		room_goto(rm_1_7);
		obj_player.x = 80;
		obj_player.y = 32;
	}
}
else if _room_name == "rm_1_6_1"
{
	if  obj_player.move_x<0 && obj_player.x<_block_size
	{
		room_goto(rm_1_6);
		obj_player.x = 464;
		obj_player.y = 224;
	}
	else if obj_player.x>room_width - _block_size
	{
		room_goto(rm_4_4);
		obj_player.x = 16
		obj_player.y = 224
	}
}
else if _room_name == "rm_1_7"
{
	if  obj_player.move_y<0 && obj_player.x<room_width/2
	{
		room_goto(rm_1_6);
		obj_player.x = 192;
		obj_player.y = 224;
	}
	else if obj_player.move_x>0 && obj_player.x>room_width/2
	{
		room_goto(rm_1_8);
		obj_player.x = 16;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_1_8"
{
	if  obj_player.move_x<0 && obj_player.x<_block_size
	{
		room_goto(rm_1_7);
		obj_player.x = 1264;
		obj_player.y = 96;
	}
	else if obj_player.move_x>0 && obj_player.x>room_width-_block_size
	{
		room_goto(rm_1_9);
		obj_player.x = 16;
		obj_player.y = 64;
	}
}
else if _room_name == "rm_1_9" 
{
	if  obj_player.move_x<0 && obj_player.x<_block_size &&  obj_player.y< 3*_block_size
	{
		room_goto(rm_1_8);
		obj_player.x = 624;
		obj_player.y = 224;
	}
	else if obj_player.move_x<0 && obj_player.x<_block_size && obj_player.y< 10*_block_size
	{
		room_goto(rm_2_1);
		obj_player.x = 464;
		obj_player.y = 224;
	}
	else if obj_player.move_x<0 && obj_player.x<_block_size && obj_player.y< 20*_block_size
	{
		room_goto(rm_2_6);
		obj_player.x = 464;
		obj_player.y = 224;
	}
	else if obj_player.move_x>0 && obj_player.x>room_width- _block_size && obj_player.y< 15*_block_size
	{
		room_goto(rm_2_2);
		obj_player.x = 16;
		obj_player.y = 224;
	}
	else if obj_player.move_y>0 && obj_player.y>room_height- _block_size
	{
		room_goto(rm_2_9);
		obj_player.x = 224;
		obj_player.y = 32;
	}
}
else if _room_name == "rm_2_1"
{
	if obj_player.move_x>0 && obj_player.x>room_width-_block_size
	{
		room_goto(rm_1_9);
		obj_player.x = 16;
		obj_player.y = 288;
	}
}
else if _room_name == "rm_2_2"
{
	if  obj_player.move_x<0 && obj_player.x<_block_size
	{
		room_goto(rm_1_9);
		obj_player.x = 464;
		obj_player.y = 448;
	}
	else if obj_player.move_x>0 && obj_player.x>room_width-_block_size
	{
		room_goto(rm_2_3);
		obj_player.x = 16;
		obj_player.y = 288;
	}
}
else if _room_name == "rm_2_3"
{
	if  obj_player.move_x<0 && obj_player.x<_block_size
	{
		room_goto(rm_2_2);
		obj_player.x = 464;
		obj_player.y = 224;
	}
	else if obj_player.move_x>0 && obj_player.x>room_width-_block_size
	{
		room_goto(rm_2_4);
		obj_player.x = 1168;
		obj_player.y = 672;
	}
}
else if _room_name == "rm_2_4"
{
	if  obj_player.move_x<0 && obj_player.y>room_height/2
	{
		room_goto(rm_2_3);
		obj_player.x = 464
		obj_player.y = 224;
	}
	else if obj_player.move_x<0 && obj_player.y<room_height/2
	{
		room_goto(rm_2_5);
		obj_player.x = 464;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_2_5"
{
	if obj_player.x<_block_size
	{
		room_goto(rm_1_9);
		obj_player.x = 432;
		obj_player.y = 64;
	}
	else if obj_player.x>room_width-_block_size
	{
		room_goto(rm_2_4);
		obj_player.x = 16;
		obj_player.y = 256;
	}
}
else if _room_name == "rm_2_6"
{
	if  obj_player.x > room_width-_block_size
	{
		room_goto(rm_1_9);
		obj_player.x = 16;
		obj_player.y = 608;
	}
	else if obj_player.x<_block_size
	{
		room_goto(rm_2_7);
		obj_player.x = 464;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_2_7"
{
	if  obj_player.x > room_width-_block_size
	{
		room_goto(rm_2_6);
		obj_player.x = 16;
		obj_player.y = 224;
	}
	else if obj_player.x<_block_size
	{
		room_goto(rm_2_8);
		obj_player.x = 464;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_2_8"
{
	if  obj_player.x > room_width-_block_size
	{
		room_goto(rm_2_7);
		obj_player.x = 16;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_2_9"
{
	if  obj_player.x > room_width-_block_size
	{
		room_goto(rm_3_1);
		obj_player.x = 16;
		obj_player.y = 224;
	}
	else if obj_player.y<_block_size
	{
		room_goto(rm_1_9);
		obj_player.x = 160;
		obj_player.y = 800;
	}
}
else if _room_name == "rm_3_1"
{
	if  obj_player.x > room_width-_block_size
	{
		room_goto(rm_3_2);
		obj_player.x = 16;
		obj_player.y = 224;
	}
	else if obj_player.x<_block_size
	{
		room_goto(rm_2_9);
		obj_player.x = 464;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_3_2"
{
	if  obj_player.x > room_width-_block_size
	{
		room_goto(rm_3_3);
		obj_player.x = 16;
		obj_player.y = 224;
	}
	else if obj_player.x<_block_size
	{
		room_goto(rm_3_1);
		obj_player.x = 464;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_3_3"
{
	if  obj_player.x > room_width-_block_size
	{
		room_goto(rm_3_4);
		obj_player.x = 16;
		obj_player.y = 224;
	}
	else if obj_player.x<_block_size
	{
		room_goto(rm_3_2);
		obj_player.x = 1064;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_3_4"
{
	if  obj_player.x > room_width-_block_size
	{
		room_goto(rm_3_5);
		obj_player.x = 16;
		obj_player.y = 128;
	}
	else if obj_player.x<_block_size
	{
		room_goto(rm_3_3);
		obj_player.x = 464;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_3_5"
{
	if  obj_player.x > room_width-_block_size
	{
		room_goto(rm_3_6);
		obj_player.x = 16;
		obj_player.y = 224;
	}
	else if obj_player.x<_block_size
	{
		room_goto(rm_3_4);
		obj_player.x = 464;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_3_6"
{
	if  obj_player.x < _block_size 
	{
		room_goto(rm_3_5);
		obj_player.x = 624;
		obj_player.y = 96;
	}
	else if obj_player.y<_block_size && obj_player.move_y <0
	{
		room_goto(rm_3_7);
		obj_player.x = 496;
		obj_player.y = 672;
	}
}
else if _room_name == "rm_3_7"
{
	if  obj_player.x < room_width/2
	{
		room_goto(rm_3_6);
		obj_player.x = 416;
		obj_player.y = 32;
	}
	else if obj_player.x > room_width/2
	{
		room_goto(rm_3_8);
		obj_player.x = 48;
		obj_player.y = 32;
	}
}
else if _room_name == "rm_3_8"
{
	if  obj_player.x > room_width-_block_size
	{
		room_goto(rm_3_9);
		obj_player.x = 16;
		obj_player.y = 224;
	}
	else if obj_player.y<_block_size && obj_player.move_y<0
	{
		room_goto(rm_3_7);
		obj_player.x = 880;
		obj_player.y = 672;
	}
}
else if _room_name == "rm_3_9"
{
	if  obj_player.x > room_width-_block_size
	{
		room_goto(rm_4_1);
		obj_player.x = 16;
		obj_player.y = 64;
	}
	else if obj_player.x<_block_size
	{
		room_goto(rm_3_8);
		obj_player.x = 464;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_4_1"
{
	if  obj_player.y > room_height/2
	{
		room_goto(rm_4_2);
		obj_player.x = 64;
		obj_player.y = 32;
	}
	else if obj_player.x<_block_size
	{
		room_goto(rm_3_9);
		obj_player.x = 464;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_4_2"
{
	if  obj_player.y < _block_size && obj_player.move_y<0
	{
		room_goto(rm_4_1);
		obj_player.x = 80;
		obj_player.y = 928;
	}
	else if obj_player.x > room_width - _block_size
	{
		room_goto(rm_4_3);
		obj_player.x = 16;
		obj_player.y = 928;
	}
}
else if _room_name == "rm_4_3"
{
	if  obj_player.x < _block_size
	{
		room_goto(rm_4_2);
		obj_player.x = 464;
		obj_player.y = 224;
	}
	else if obj_player.y<_block_size
	{
		room_goto(rm_4_4);
		obj_player.x = 224;
		obj_player.y = 224;
	}
}
else if _room_name == "rm_4_4"
{
	if  obj_player.y > room_height - _block_size
	{
		room_goto(rm_4_3);
		obj_player.x = 160;
		obj_player.y = 32;
	}
	else if obj_player.x<_block_size
	{
		room_goto(rm_1_6_1);
		obj_player.x = 1280-_block_size;
		obj_player.y = 96;
	}
}


