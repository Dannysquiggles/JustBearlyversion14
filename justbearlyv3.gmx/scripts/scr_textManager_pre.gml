#define scr_textManager_pre
//This is a cript for a generic text box. the text filled in can be accessed by any object globally.
/// Create some variables
global.talk = 0;
width = 500;
height = 200;
padding = 8;
press = 0;
draw_set_halign(fa_center);
draw_set_font(fnt_bebas);
//alarm[0] = 30;

// Keep track of the starting line
start = ds_list_create();
ds_list_add( start, 0 );

//keep track of last space and current position
count = 0;
last_space = 0;
line = 0;

//set message
message = rm_message;
str = "";

global.still = 1;

#define scr_textManager_pre_active
///this script activates and draws the text. varibles can be changed globally.
/// Draw string/ box
message = rm_message;
//draw_set_alpha( .5 );
//draw_roundrect_colour (x,y, x+width, y+height, c_black, c_black, false );
//draw_set_alpha( 1 );

//set the color white
draw_set_color( color);

//are we past the width? insert a ling break

if ( string_width( str) > width-padding-padding ) {
//remove space add line break
    message = string_delete( message, last_space, 1 );
    message = string_insert( "#", message, last_space );
    ds_list_add( start, last_space+1 );
    }

//make sure we have not reached the end of message
if (count < string_length( message)) {
// last space? set the last space
    if (string_char_at( message, count ) == " ") {
    last_space = count;
    }
    //incremen the count
    count ++;
}
// Did we go past the bottom? move up a line
if ( string_height( str ) > height-padding ) {
    line++;
}

//grab string
str = string_copy( message, ds_list_find_value( start, line), count - ds_list_find_value (start, line));

//draw the text

draw_text( x+padding, y+padding, str); 