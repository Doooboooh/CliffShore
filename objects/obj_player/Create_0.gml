// 输入变量
input_x = 0;
jump_pressed = false;
attack_pressed = false;
shoot_pressed = false;
crouch_pressed = false;
dash_pressed = false;
left_wall_grab_pressed = false;
right_wall_grab_pressed = false;
space_holding = false;

// 游戏进程属性
can_attack = false;
can_shoot = false;
can_dash = false;
can_doublejump = false;
can_slidewall = false;
have_key = false;


// 属性变量
hp = 10;
arrow_num = 0;
grav = 0.4;
move_speed = 2.5;
jump_speed = 5;

// 控制变量
move_x = 0;
true_move_x = 0;
move_y = 0;
move_direction = 0;
face_direction = 1;
temp_direction = 0;

on_ground = true;
under_ceiling = false;
left_have_wall = false;
right_have_wall = false;
attack_ready = true;
dash_ready = true;



// 状态变量
state = 0;
once = true;
no_effect = false;
idle = true;		// 0
hurting = false;	// 1
attacking = false;	// 2
shooting = false;	// 3
jumping = false;	// 4
crouching = false;	// 5
dashing = false;	// 6
rising = false;		// 7
running = false;	// 8
falling = false;	// 9
wallgrabing = false;	// 10



// 状态变量的附属变量
hurting_direction = 0;
hurting_force = 0;
jump_num = 0;
max_jump_num = 1;
dash_num = 0;
jump_once = 0;
attack_jump_once = 0;

