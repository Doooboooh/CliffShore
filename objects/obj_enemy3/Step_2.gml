/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if hp<= 0
{
	instance_create_layer(x,y,layer,obj_enemy3_defeated);
	instance_destroy();
}
else if hurting
{
	sprite_index = spr_enemy3_hurt;
}
else if idle
{
	show_debug_message("idle");
	sprite_index = spr_enemy3_idle;
}
else
{
	show_debug_message("enemy3 状态错误!");
}




