/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
// Inherit the parent event
event_inherited();

// 属性变量
hp = 5;
attack = 1;
attack_force = 0.02;
move_speed = 1;

// 控制变量
speed = move_speed;
direction = point_direction(x, y, obj_player.x, obj_player.y)
alarm_set(1,60);

// 状态变量
hurting = false;
walking = false;
idle = true;

// 状态变量附加变量

