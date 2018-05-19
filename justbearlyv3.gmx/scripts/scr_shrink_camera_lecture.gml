// shrink view to new size, and change its angle
if view_wview[0] > view_wview[2] //check if view has zoomed to it's goal.view[1] should be set as your second view in the room editor
{
    //shrink view each frame
    view_wview[0] *= 0.9
    view_hview[0] *= 0.9
    //move views anchor point
    view_xview[0] += 26
    view_yview[0] += 15
}

else
{
//create dial after view meets it's goal
if instance_number(obj_playerdialogue) == 0 //&& global.oc == 0
    {
    view_xview[0] = view_xview[2]
    view_yview[0] = view_yview[2]
    instance_create(832,480, obj_playerdialogue);
    instance_create(928,512, object67);
    }
global.color = false;
grow = false

}
