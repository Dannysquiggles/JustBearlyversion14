// scr_view_zoom(amount, view)
var amount = 1+argument0;
var view = argument1;

// limit zoom

if (view_wview[view] <= minlimit) exit;//&& amount < 1) exit;
if (view_wview[view] >= maxlimit) exit;//&& amount > 1) exit;

// get the offset
var offx = abs(view_wview[view]*amount - view_wview[view]);
var offy = abs(view_hview[view]*amount - view_hview[view]);

//scale the view
view_wview[view] *= amount;
view_hview[view] *= amount;

//adjust the view position based on the scale
if (amount < 1)
{
    view_xview[view] += offx/2;
    view_yview[view] += offy/2;
    
}
else if (amount > 1)
{
    view_xview[view] -= offx/2;
    view_yview[view] -= offy/2;
}
