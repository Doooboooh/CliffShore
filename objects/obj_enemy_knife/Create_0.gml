/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

alarm_set(0,5)

collide_player = false;
collide_weapon = false;

// Inherit the parent event
event_inherited();

image_xscale = sign(obj_player.x-x);

