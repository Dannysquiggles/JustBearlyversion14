// shrink view to new size, and change its angle
if !instance_exists(obj_gen_guider)
{
    instance_create(view_xview,view_yview, obj_gen_guider)
    global.camrate = (obj_gen_guider.x - global.og_xview)/13
}
with obj_gen_guider {move_towards_point(global.og_xview,global.og_yview, global.camrate)}
view_xview[0] = obj_gen_guider.x //- (view_wview/2)
view_yview[0] = obj_gen_guider.y //- (view_hview/2)

if view_wview[0] < og_view //check if view has zoomed to it's goal.view[1] should be set as your second view in the room editor
{
    //shrink view each frame
    view_wview[0] *= 1.1
    view_hview[0] *= 1.1
    //move views anchor point
    //view_xview[0] = og_xview
    //view_yview[0] = og_yview
}

else
{
view_wview[0] = og_view;
view_hview[0] = og_hview;
view_xview[0] = global.og_xview
view_yview[0] = global.og_yview
global.color = true;
with obj_gen_guider {instance_destroy()}
global.grow = false
grow = false
}
