//check if there is no input
if keyboard_check(vk_nokey) && mouse_check_button(mb_none)
{
//if there is no input add points to timer
    timer += 1;
//if timer reaches full, restart the game
    if timer >= maxtime
    {
        game_restart()
    }
}
//a key is pressed, reset the timer.
else
{
    timer = 0
}
