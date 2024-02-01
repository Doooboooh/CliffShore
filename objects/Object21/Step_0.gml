/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if instance_exists(obj_player)
{
	if obj_player.y < y
	{
		collision_
		instance_create_layer(x,y,layer,obj_platform2);
		instance_destroy();
	}
}





