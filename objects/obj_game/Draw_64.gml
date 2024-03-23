/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

var _pos_x = 32;
var _pos_y = 32;
var _xinterval = 96;
var _yinterval = 96;

if instance_exists(obj_player)
{
	var _health = obj_player.hp;
	for (var _i =1;2*_i<=obj_player.hp;_i++)
	{
		draw_sprite(spr_heart,-1,_pos_x,_pos_y);
		_health -= 2;
		_pos_x += _xinterval;
	}
	for (var _j =1;_j<=_health;_j++)
	{
		draw_sprite(spr_half_heart,-1,_pos_x,_pos_y);
		_health -= 1;
		_pos_x += _xinterval;
	}
	
	_pos_x = 32;
	_pos_y = 32+_yinterval;
	
	for (var _i = 1;_i<=obj_player.arrow_num;_i++)
	{
		draw_sprite(spr_icon_arrow,-1,_pos_x,_pos_y);
		_pos_x += _xinterval;
	}
}




