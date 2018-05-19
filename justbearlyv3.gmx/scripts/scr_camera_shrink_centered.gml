// shrink view to new size, and change its angle
if !instance_exists(obj_gen_guider)
{
    instance_create(room_width/2 - view_wview/2,room_height/2 - view_hview/2, obj_gen_guider)
    global.camrate =(view_xview[1] - obj_gen_guider.x)/13
}
with obj_gen_guider { move_towards_point(view_xview[1],view_yview[1], global.camrate) }
view_xview[0] = obj_gen_guider.x //+ (view_wview/2)
view_yview[0] = obj_gen_guider.y //+ (view_hview/2)
if view_wview[0] > view_wview[1] //check if view has zoomed to it's goal.view[1] should be set as your second view in the room editor
{
    
    //shrink view each frame
    view_wview[0] *= 0.9
    view_hview[0] *= 0.9
    //move views anchor point
   // view_xview[0] = obj_gen_guider.x - (view_wview/2)
    //view_yview[0] = obj_gen_guider.y - (view_hview/2)
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
with obj_gen_guider {instance_destroy()}
grow = false
global.grow = false

}
