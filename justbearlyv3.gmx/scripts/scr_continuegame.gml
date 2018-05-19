///load the last saed file

if file_exists("Save.sav")
{
    var LoadFile = file_text_open_read("Save.sav");
    var LoadedRoom = file_text_read_real(LoadFile);
    file_text_close(LoadFile)
    room_goto(LoadedRoom + 1)
}
else
{
//show error
}
