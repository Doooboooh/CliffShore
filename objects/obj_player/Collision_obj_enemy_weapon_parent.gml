/// @description 受伤-武器 
// 你可以在此编辑器中写入代码 

if state != 1
{
	hp = hp - other.attack;
	hurting_direction = other.x-x;
	hurting_force = other.attack_force;
	
	state = 1;
	alarm_set(0,35);
}







