///selectpiece
if global.click = 0
{
    if placed = false
    {
        click = true
        global.click += 1
        randomize()
        sound = choose(sf_pickup1,sf_pickup2,sf_pickup3,sf_pickup4)
        audio_play_sound(sound,2,false)
    }
}
