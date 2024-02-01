/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if skilling1 
{
	move_x = move_direction*move_speed;
}
else if hurting
{
	move_x = 0;
}
else if skilling2
{
	move_x = 0;
}
else if attacking
{
	move_x = 0;
}
else if walking
{
	move_x = move_direction*move_speed;
}
else if idle
{
	move_x = 0;
}
else
{
	show_debug_message("enemy1 状态错误!");
}

move_y = 0;

x += move_x;
y += move_y;




