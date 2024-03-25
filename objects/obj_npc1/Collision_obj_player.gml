/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if keyboard_check((ord("W"))) && global.chat_is_over == true
{
	image_xscale = -sign( obj_player.x - x)
	if state == 0
	{
		state = 1;
		chat("npc1_0.yarn");
		instance_create_layer(x+64,y-64,"Instances",obj_icon_knife);
	}
	else if state == 1
	{
		chat("npc1_1.yarn");
	}
}






