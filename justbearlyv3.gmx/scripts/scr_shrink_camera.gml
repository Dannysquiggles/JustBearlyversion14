// shrink view to new size, and change its angle
if view_wview[0] > view_wview[1] //check if view has zoomed to it's goal.view[1] should be set as your second view in the room editor
{
    //shrink view each frame
    view_wview[0] *= 0.9
    view_hview[0] *= 0.9
    //move views anchor point
    view_xview[0] = view_xview[1]
    view_yview[0] = view_yview[1]
}

else
{
//create dial after view meets it's goal
if instance_number(obj_dialpointer) == 0 && global.oc == 0.1
    {
    instance_create(obj_player_cafe.x,obj_player_cafe.y, obj_dialpointer);
    global.color = false;
    }
else if instance_number(obj_lafmeter) == 0
    {
    instance_create(obj_player_cafe.x+10,obj_player_cafe.y + 30, obj_lafmeter);
    global.color = false;
    }
grow = false
global.grow = false

}
