/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if obj_player.have_key state = 2;
if keyboard_check((ord("W"))) && global.chat_is_over == true
{
	if state == 0 
	{
		state = 1;
		chat("example.yarn");
	}
	else if state == 1
	{
		chat("example.yarn");
	}
	else if state == 2 
	{
		state = 3;
		chat("example.yarn");
		instance_create_layer(x+64,y-64,"Instances",obj_icon_bow);
	}
	else if state == 3
	{
		chat("example.yarn");
	}

}


