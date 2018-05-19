// spins and stopps dialogue dial. reads possitions and sets text variables.
if stop == "false" //SPIN DIAL BACK AND FORTH
    {
    if dir == 0
    {
        if image_angle > maxangle
        {
        //rate *= 1.05;
        image_angle -= rate;
        }
        else
        {
        dir = 1;
        }
    }
    else
    {
        if image_angle < 0
        {
        //rate *= 1.05;
        image_angle += rate;
        }
        else
        {
        dir = 0;
        }
    }
    }
else
//select outcome
{
    if image_angle > bracket_1 //blink outcome one, set alarm[0]
    {
        if al == false
        {
        with obj_dialouter {sprite_index = (spr_outeroc1)}
        alarm[0] = 70;
        if instance_exists(obj_rmManager_coffee3)
        {
            audio_play_sound(sf_selectbell,5,false)
        }
        else { instance_create(x,y, fect_shake)}
        
        al = true;
        }
       /* global.oc = 1;
        global.message = otc1_text
        global.col = 'black'*/
    }
    else if image_angle > bracket_2
    {
        if al == false
        {
            with obj_dialouter {sprite_index = (spr_outeroc2)}
            alarm[1] = 70;
            instance_create(x,y, fect_shake)
                    al = true;
        }
        //global.oc = 2;
        //global.message = otc2_text
        //global.col = 'black'
    }
    else if image_angle >= bracket_3
    {
        if al == false
        {
            with obj_dialouter {sprite_index = (spr_outeroc3)}
            alarm[2] = 70
        if instance_exists(obj_rmManager_coffee2) || instance_exists(obj_rmManager_coffee4)
        {
            audio_play_sound(sf_selectbell,5,false)
        }
        else { instance_create(x,y, fect_shake)}
                    al = true;
        }
       // global.oc = 3;
        //global.message = otc3_text
        //global.col = 'black'
    }
        /*else
    {
        if global.oc == 0
        {
        alarm[0] = 15;
        global.message = otc4_text
        global.oc = 4;
        }
    }*/
}

if keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left) //or image_angle <= maxangle
{
    stop = "true";
}    
