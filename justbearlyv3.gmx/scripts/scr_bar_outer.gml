//check if game state should end
if global.state == 'play'
{
    //apply shrink and grow depending on mouse button
    if mouse_check_button_released(mb_left)
    {
        image_yscale += RiseRate
    }
    else
    {
        image_yscale -= FallRate1
    }
    
    //test size
    if image_yscale <= Min
    {
        image_yscale = Min
        global.state = 'lose';
    }
    if image_yscale >= Max
    {
        image_yscale = Max
        global.state = 'win';
    }
}
    
    
