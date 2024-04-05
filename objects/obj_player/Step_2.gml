// 动画控制




// 死亡动画
if hp <= 0
{
	instance_create_layer(x,y,layer,obj_player_defeated);
	instance_destroy();
}
// 受伤时间
else if state == 1
{
	sprite_index = spr_player_hurt;
}
// 攻击时间
else if state == 2
{
	
	image_xscale = face_direction;
	if on_ground == false && once
	{
		once = false;
		if keyboard_check(ord("W"))
		{
			sprite_index = spr_player_attack3;
			var _knife = instance_create_layer(x+20,y-30,layer,obj_knife);
			_knife.image_angle = 90;
		}
		else if keyboard_check(ord("S"))
		{
			sprite_index = spr_player_attack3;
			var _knife = instance_create_layer(x-20,y,layer,obj_knife);
			_knife.image_angle = 270;
		}
		else if right_wall_grab_pressed
		{
			sprite_index = spr_player_attack3;
			if right_have_wall 
			{
				var _knife = instance_create_layer(x-10,y,layer,obj_knife);
				_knife.image_xscale = -1;
			}
			else
			{
				var _knife = instance_create_layer(x+10,y,layer,obj_knife);
				_knife.image_xscale = 1;
			}
		}
		else if left_wall_grab_pressed
		{
			sprite_index = spr_player_attack3;
			if left_have_wall 
			{
				var _knife = instance_create_layer(x+10,y,layer,obj_knife);
				_knife.image_xscale = 1;
			}
			else
			{
				var _knife = instance_create_layer(x-10,y,layer,obj_knife);
				_knife.image_xscale = -1;
			}
		}
		else
		{	
			sprite_index = spr_player_attack3;
			var _knife = instance_create_layer(x+10*face_direction,y,layer,obj_knife);
			_knife.image_xscale = face_direction;
		}
	}
	else if once
	{
		once = false;
		if keyboard_check(ord("W"))
		{
			sprite_index = spr_player_attack3;
			var _knife = instance_create_layer(x+20,y-30,layer,obj_knife);
			_knife.image_angle = 90;
		}
		else if right_wall_grab_pressed
		{
			sprite_index = spr_player_attack3;
			var _knife = instance_create_layer(x+10,y,layer,obj_knife);
			_knife.image_xscale = 1;
		}
		else if left_wall_grab_pressed
		{
			sprite_index = spr_player_attack3;
			var _knife = instance_create_layer(x-10,y,layer,obj_knife);
			_knife.image_xscale = -1;
		}
		else 
		{
			sprite_index = spr_player_attack3;
			var _knife = instance_create_layer(x+10*face_direction,y,layer,obj_knife);
			_knife.image_xscale = face_direction;
		}
	}
}
// 攻击时间
else if state == 3
{
	sprite_index = spr_player_shooting;
	image_xscale = face_direction;
}
else if state == 5
{
	sprite_index = spr_player_crouch;
	image_xscale = face_direction;
}
else if state == 6
{
	sprite_index = spr_player_dash;
	image_xscale = face_direction;
}
else if state == 0
{
	sprite_index = spr_player_idle;
}
// 掉落时间
else if state == 9
{
	// 修改动画
	sprite_index = spr_player_falling;
	// 修改人物朝向
	image_xscale = face_direction;
}
// 上升时间
else if state == 4
{
	sprite_index = spr_player_jumping;
}
else if state == 7 || state == 11
{
	// 修改动画
	sprite_index = spr_player_rising;
	// 修改人物朝向
	image_xscale = face_direction;
}
else if state == 8
{
	// 修改动画
	
	sprite_index = spr_player_run;
	// 修改人物朝向
	image_xscale = face_direction;
}
else if state == 10
{
	sprite_index = spr_player_wallgrabing;
	image_xscale = -face_direction;
}
else
{
	show_debug_message("player1 状态出错!");
}

