/// @description 射箭箭头
// 你可以在此编辑器中写入代码 

var _arrow = instance_create_layer(x,y-16,layer,obj_arrow);
if obj_player.image_xscale == 1 
{
	_arrow.direction = 0;
}
else _arrow.direction = 180;
_arrow.image_xscale = image_xscale;


