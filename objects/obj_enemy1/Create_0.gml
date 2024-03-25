// Inherit the parent event
event_inherited();

// 属性变量
hp = 10;
attack = 1;
attack_force = 0.02;
move_speed = 0.5;
grav = 0.4;

// 控制变量
move_x = 0;
move_y = 0;
move_direction = choose(-1,1);
attack_pressed = false;

// 状态变量
state = 0;
idle = true;		// 0
hurting = false;	// 1
attacking = false;	// 2
walking = false;	// 3
once = true;
on_ground = true;

// 状态变量附加变量
hurting_direction = 0;
hurting_force = 0;
attacking_direction = 1;

// 附属物件
_enemy_knife = obj_enemy_knife;
alarm_set(11,60);