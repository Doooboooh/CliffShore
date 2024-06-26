function refresh_text_elements()
{
    text_elements = [];
    
    //Set all the Scribble text we're going to cache to wrap
    var _x = 480;
    var _y = 200;
    
    //Iterate over all the content strings
    var _i = 0;
    repeat(ChatterboxGetContentCount(chatterbox))
    {
        //Cache a new text element using the content text Chatterbox found
        var _element = scribble(ChatterboxGetContent(chatterbox, _i));
        
        //Wrap our text so that it doesn't exceed the room's width
        _element.wrap(1600);
        
        //Create a new typist for the text element, and tell it to start typing in
        var _typist = scribble_typist().in(1, 5);
        
        //Store our new text element and typist
        array_push(text_elements, {
            x: _x,
            y: _y,
            element: _element,
            typist: _typist
        });
        
        //Move down a bit to make each content string look like a paragraph
        _y += _element.get_height(_element) + 25;
		show_debug_message (_element.get_height(_element));
        ++_i;
    }
    
    //Indent our options slightly
    _x += 30;
    
    //Space out the options from the content a little too
    _y += 10;
    
    if (ChatterboxIsWaiting(chatterbox))
    {
        //If we're in a waiting state (no options) then we should prompt the user to press space
        array_push(text_elements, {
            x: _x,
            y: _y,
            element: scribble("（按回车键继续）"),
            typist: scribble_typist().in(1, 5)
        });
    }
    else
    {
        var _i = 0;
        repeat(ChatterboxGetOptionCount(chatterbox))
        {
            //Start formatting our string with some colour!
            switch(_i)
            {
                case 0: var _string = "[#90FF90]"; break;
                case 1: var _string = "[#FF9090]"; break;
                case 2: var _string = "[#FFFF90]"; break;
                case 3: var _string = "[#9090FF]"; break;
            }
            
            //Add a number prompt
            _string += string(_i+1) + ") ";
            
            //aaaand add the actual option string too
            _string += ChatterboxGetOption(chatterbox, _i);
            
            //Cache a new text element using our formatted string
            var _element = scribble(_string);
            
            //Wrap our text so that it doesn't exceed the room's width
            _element.wrap(1600);
            
            //Create a new typist for the text element, and tell it to start typing in
            var _typist = scribble_typist().in(1, 5);
            
            //Store our new text element and typist
            array_push(text_elements, {
                x: _x,
                y: _y,
                element: _element,
                typist: _typist
            });
            
            //Move down a bit to visually separate each option
            _y += _element.get_height() + 10;
            ++_i;
        }
    }
}
