///save room
//check for save file, delete old one
if (file_exists("Save.sav")) file_delete("Save.sav");

//create a save.save file
var SaveFile = file_text_open_write("Save.sav");

//create room text to go in the save file
var SavedRoom = room;

//write save file
file_text_write_real(SaveFile,SavedRoom);

//close save file
file_text_close(SaveFile);
