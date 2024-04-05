/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
// Inherit the parent event
event_inherited();

// 属性变量
hp = 5;
attack = 1;
attack_force = 0.02;
max_speed = 4;

// 控制变量
move_distance = 0;
goal_distance = 0;

// 状态变量
state = 0;
idle = true;		// 0
hurting = false;	// 1
trying = false;		// 2
dashing = false;	// 3

// 状态变量附加变量
hurting_direction = 0;
hurting_force = 0;