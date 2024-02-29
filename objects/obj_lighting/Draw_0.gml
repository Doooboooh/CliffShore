/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if !surface_exists(surf)
    {
    var _cw = camera_get_view_width(view_camera[0]);
    var _ch = camera_get_view_height(view_camera[0]);
    surf = surface_create(_cw, _ch);
    surface_set_target(surf);
    draw_set_colour(c_black);
    draw_set_alpha(0);
    draw_rectangle(0, 0, _cw, _ch, false);
    surface_reset_target();
    }
else if (surface_exists(surf)) {
	var _cw = camera_get_view_width(view_camera[0]);
	var _ch = camera_get_view_height(view_camera[0]);
	var _cx = camera_get_view_x(view_camera[0]);
	var _cy = camera_get_view_y(view_camera[0]);
	surface_set_target(surf);
	draw_set_color(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(0, 0, _cw, _ch, false);
	gpu_set_blendmode(bm_subtract);
	with (obj_light_parent)
	{
		draw_set_color(c_white)
		draw_set_circle_precision(32)
		draw_circle(x-_cx,y-16-_cy,100,false);
	}
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface(surf, _cx, _cy);
}






