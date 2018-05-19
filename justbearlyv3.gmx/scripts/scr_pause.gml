///this is to stop errything and pause
if (!pause)
{

    pause = 1;
    instance_deactivate_all(true);
    audio_pause_all();
    instance_create(20,20, obj_pauseback)
 
    instance_create(896,288, obj_playback)

    instance_create(832,286, obj_pauseplay)

    instance_create(1139,544, obj_menuback)

    instance_create(1173,544, obj_pausemenu)

    instance_create(992,800, obj_exitback)

    instance_create(988,832, obj_pauseexit)

    
   
    
    
}
else
{
    pause = 0;
    instance_activate_all();
    audio_resume_all();
    instance_destroy(obj_pauseback)
    instance_destroy(obj_playback)
    instance_destroy(obj_pauseplay)
    instance_destroy(obj_menuback)
    instance_destroy(obj_pausemenu)
    instance_destroy(obj_exitback)
    instance_destroy(obj_pauseexit)
}
    
