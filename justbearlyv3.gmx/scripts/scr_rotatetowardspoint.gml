///figure out whether you are adding or minusing values?

dir = targetpoint - image_angle;
//if (point < 224) && (point > 145)
//{
if dir < 0 && image_angle > point
{
    image_angle -= 0.1;
}
else if dir > 0 && image_angle < point
{
    image_angle += 0.1;
}
//}
