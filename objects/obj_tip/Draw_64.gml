/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

draw_sprite(spr_box2,0,400,180)

if (ChatterboxIsStopped(chatterbox))
{
    //If we've stopped we should say so
    //In a real game you'd close the dialogue system and permit user interaction again
    //scribble("(Chatterbox stopped)").draw(10, 10);
	var _room_name = room_get_name(room);
	if _room_name == "rm_4_2"
	{
		instance_create_layer(0,0,"Instances",obj_snowflake);
	}
	instance_destroy();
}
else
{
    //Iterate over all of our text elements and draw them
    //We cache text elements for drawing in refresh_text_elements()
    var _i = 0;
    repeat(array_length(text_elements))
    {
        //Get our text element and position
        var _struct = text_elements[_i];
        var _x       = _struct.x;
        var _y       = _struct.y;
        var _element = _struct.element;
        var _typist  = _struct.typist;
        
        //Draw the text element
        _element.draw(_x, _y, _typist);
        
        //Break out of the loop if this text element hasn't finished fading in
        if (_typist.get_state() < 1.0) break;
        //Autotype will only happen when you actually draw the text element
        //This means if we don't want to fade text in we can just... not draw it
        
        ++_i;
    }
}




