/// @description 发射子弹倒计时
// 你可以在此编辑器中写入代码 

var _bullet = instance_create_layer(x+8,y-12,layer,obj_enemy_bullet);
_bullet.speed = 1;
_bullet.direction = 0;
alarm_set(0,120)



