/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 



if keyboard_check((ord("W"))) && global.chat_is_over == true
{
	if state == 0 
	{
		state = 1;
		chat("npc3_0.yarn");
		instance_create_layer(x+64,y-64,"Instances",obj_icon_dash);
	}
	else if state == 1
	{
		chat("npc3_1.yarn");
	}
}

