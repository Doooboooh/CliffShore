/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if room_get_name(room) == "rm_2_4"
{
	audio_stop_sound(snd_bgm);
	audio_play_sound(snd_bgm2,5,true);
}
else if room_get_name(room) == "rm_4_2"
{
	audio_stop_sound(snd_bgm);
	audio_play_sound(snd_nizhuan,5,true);
}

// 相机
view_enabled = true;
view_visible[0] = true;

var _view_width = 2400;
var _view_height = 2400/16*9;

view_set_xport(view_current,0)
view_set_yport(view_current,0)
view_wport[0] = _view_width;
view_hport[0] = _view_height;

view_camera[0] = camera_create_view(0, 0, 480, 270, 0, obj_player, -1, -1, 240, 135);


var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - _view_width/2;
var _ypos = (_dheight / 2) - _view_height/2;
window_set_rectangle(_xpos, _ypos, _view_width,_view_height );
surface_resize(application_surface, _view_width, _view_height);

global.chat_is_over = true;
