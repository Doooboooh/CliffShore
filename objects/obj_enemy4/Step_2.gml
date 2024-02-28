/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if hp<= 0
{
	instance_create_layer(x,y,layer,obj_enemy4_defeated);
	instance_destroy();
}
else if state == 2
{
	sprite_index = spr_enemy4_hurt;
}
else if state == 0
{
	show_debug_message("idle");
	sprite_index = spr_enemy4_idle;
}
else
{
	show_debug_message("enemy4 状态错误!");
}




