///load the last saed file
if !file_exists("Done.sav")
{
    //create a save.save file
    var SaveFile = file_text_open_write("Done.sav");

    //create room text to go in the save file
    var SavedRoom = "done";

    //write save file
    file_text_write_real(SaveFile,SavedRoom);

    //close save file
    file_text_close(SaveFile);
}
