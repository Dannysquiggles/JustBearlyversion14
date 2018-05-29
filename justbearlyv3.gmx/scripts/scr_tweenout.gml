
if global.ending == true 
{
    rate *= 1.2
    x += rate
    
    if spoty == 0 //move on y
    {
        y += (my - y) * 0.05
        
        if dir == 'right'
        {
            if x >= mx
            {
                 spoty = 1
            }
        }
        else if dir == 'left'
        {
            if x <= mx
            {
                 spoty = 1
            }
        }
    }
    else if spoty == 1
    {
        y += (room_height/2 - y) * 0.05 
    }
    
    
    /*if spotx == false //move on x
    {
        x += (room_width/2 - x) * 0.025
        
    
        if dir == 'right'
        {
        if x >= room_width/2
        {
            //spotx = true
            game_end()
        }
        }
        else if dir == 'left'
        {
        if x <= room_width/2
        {
            //spotx = true
            game_end()
        }
        }
    }
    else if spotx == true
    {
        x += (room_width - x) * 0.05
        
    }
    
    if spoty == 0 //move on y
    {
        y += (my - y) * 0.05
        
        if dir = 'right'
        {
            if x >= mx
            {
                 spoty = 1
            }
        }
        else if dir = 'left'
        {
            if x <= mx
            {
                 spoty = 1
            }
        }
    }
    else if spoty == 1
    {
        y += (room_height/2 - y) * 0.05 
    }

*/    
}



