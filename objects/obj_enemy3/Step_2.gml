/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if hp<= 0
{
	instance_create_layer(x,y,layer,obj_enemy3_defeated);
	instance_destroy();
}
else if state == 1
{
	sprite_index = spr_enemy3_hurt;
}
else if state == 2
{
	sprite_index = spr_enemy3_try;
}
else if state == 3
{
	sprite_index = spr_enemy3_idle;
}
else if state == 0
{
	sprite_index = spr_enemy3_idle;
}




