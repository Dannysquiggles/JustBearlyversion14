///find positions
    //bg and scale factor
    if view_visible[0]
    {
    scalefactor = view_wview[0]/1920
    global.og = scalefactor
    xoffset = view_xview[0]
    yoffset = view_yview[0]
    
    //apply changes
    image_xscale = scalefactor; image_yscale = scalefactor; x = xoffset; y = yoffset ;
    }
    else if view_visible[1]
    {
    scalefactor = view_wview[1]/1920
    global.og = scalefactor
    xoffset = view_xview[1]
    yoffset = view_yview[1]
    
    //apply changes
    image_xscale = scalefactor; image_yscale = scalefactor; x = xoffset; y = yoffset ;
    }
    
