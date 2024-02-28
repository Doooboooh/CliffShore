/// @description 走路方向切换
// 你可以在此编辑器中写入代码 

var _random = random_range(-1,1);
if _random >=0 move_direction =1;
else if _random <0 move_direction = -1;

alarm_set(11,60);
