/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 



if keyboard_check((ord("W"))) && global.chat_is_over == true
{
	if state == 0 
	{
		state = 1;
		chat("npc2_0.yarn");
	}
	else if state == 1
	{
		chat("npc2_1.yarn");
	}
	else if state == 2 
	{
		state = 3;
		chat("npc2_2.yarn");
		instance_create_layer(x+64,y-64,"Instances",obj_icon_bow);
		
	}
	else if state == 3
	{
		chat("npc2_3.yarn");
		
	}
}


