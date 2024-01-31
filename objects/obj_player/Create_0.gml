// 输入变量
input_x = 0;
jump_pressed = false;
attack_pressed = false;
shoot_pressed = false;
space_holding = false;

// 属性变量
hp = 5;
grav = 0.5;
move_speed = 2.5;
jump_speed = 6;

// 控制变量
move_x = 0;
move_y = 0;
move_direction = 0;

on_ground = true;
under_ceiling = false;


// 状态变量
idle = true;
hurting = false;
attacking = false;
shooting = false;
jumping = false;
rising = false;
running = false;
falling = false;
landing = false;

// 状态变量的附属变量
hurting_direction = 0;
hurting_force = 0;
_hurt_source = obj_enemy_knife;
_hurt_souce_enable_last = false;
jump_num = 0;
jump_once = 0;