///spawn
if touched == false
{

if global.imageindex > (image_number - 1)
{
    if !instance_exists(obj_nightcome)
    {
        instance_create(room_width/2,room_height/2, obj_nightcome)
    }
}

//messure how far you are form the boarder. start a new line if two close.

if room_width > (nx + (sprite_width + buffer)) && place_empty(nx,ny)
{
    instance_create(nx, ny, obj_yes_no_prompts)
}
else
{
    randomize()
    nx = random_range(0,room_width-sprite_width)
    ny = random_range(0,room_height-sprite_height)
    script_execute(scr_spawn_yes_no)
}

touched = true
}
