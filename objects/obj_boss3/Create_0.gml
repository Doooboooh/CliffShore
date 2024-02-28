/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// Inherit the parent event
event_inherited();

// 属性变量
hp = 30;
attack = 1;
attack_force = 0.06;
move_speed = 0.2;

// 控制变量
move_x = 0;
move_y = 0;
move_direction = choose(-1,1);
move_distance = 0;

// 状态变量
hurting = false;
attacking = false;
skilling1 = false;
skilling2 = false;
walking = false;
idle = true;
next_state = 0;

// 状态变量附加变量
hurting_direction = 0;
hurting_force = 0;
attacking_direction = 1;
skilling2_once = true;
alarm_set(1,120);

audio_play_sound(snd_nizhuan,5,true);