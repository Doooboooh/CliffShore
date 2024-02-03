/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if instance_exists(obj_player) == false
{
	instance_create_layer(start_x,start_y,layer,obj_player);
}


show_debug_message("fps"+string(game_get_speed(fps_real)))

