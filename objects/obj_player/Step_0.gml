// 键盘输入
move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
move_x = move_x*move_speed;



// 移动代码
if place_meeting(x,y+1,obj_platform)
{
	move_y = 0;
	
	if keyboard_check(vk_space)
	{
		move_y = -jump_speed;
	}
}
else if move_y < 10
{
	move_y += 0.5;
}

move_and_collide(move_x,move_y,obj_platform)

// 动画控制


if move_x != 0
{
	// 修改动画
	sprite_index = spr_run;
	// 修改人物朝向
	image_xscale = sign(move_x);
}
else
{
	// 修改动画
	sprite_index = spr_idle;
}


