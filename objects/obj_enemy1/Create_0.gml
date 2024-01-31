// Inherit the parent event
event_inherited();

// 属性变量
hp = 10;
attack = 1;
attack_force = 1;
move_speed = 0.5;

// 控制变量
move_x = 0;
move_y = 0;
move_direction = choose(-1,1);

// 状态变量
hurting = false;
attacking = false;
walking = false;
idle = true;

// 状态变量附加变量
hurting_direction = 0;
hurting_force = 0;
attacking_direction = 1;