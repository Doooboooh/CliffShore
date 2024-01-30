/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 







// Inherit the parent event
event_inherited();

move_speed = 8;
grav = 0.1;
vy = 0;

speed = move_speed;

if obj_player.image_xscale == 1 
{
	direction = 0;
}
else direction = 180;

image_xscale = obj_player.image_xscale;
