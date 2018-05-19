// shrink view to new size, and change its angle
if view_wview[0] > view_wview[1] //check if view has zoomed to it's goal. view[1] should be set as your second view in the room editor
{
    //shrink view each frame
    view_wview[0] *= 0.9
    view_hview[0] *= 0.9
    //move views anchor point
    view_xview[0] = x - view_wview[0]*0.8
    view_yview[0] = y - (sprite_height*0.96)
   

}

else
{
if !instance_exists(obj_bubblesmall)
           {
                instance_create(x- 250, y - sprite_height*0.85, obj_bubblesmall)
                instance_create(x- 250, y - sprite_height*0.85, fect_shake)
                alarm[1] = 3*room_speed
                //global.stress += 0.25
           }
//create dial after view meets it's goal
/*if instance_number(obj_dialpointer) == 0 && global.oc == 0
    {
    instance_create(obj_player_cafe.x,obj_player_cafe.y, obj_dialpointer);
    global.color = false;
    }
else if instance_number(obj_lafmeter) == 0
    {
    instance_create(obj_player_cafe.x+10,obj_player_cafe.y + 30, obj_lafmeter);
    global.color = false;
    }*/
grow = false

}
