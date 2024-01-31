/// @description 受伤-武器 
// 你可以在此编辑器中写入代码 



if hurting == false
{
	hp = hp - other.attack;
	hurting_direction = other.x-x;
	hurting_force = other.attack_force;
	
	hurting = true;
	idle = false;
	alarm_set(0,35);
}







