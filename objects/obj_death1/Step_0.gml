//fade transition

fade++;

if (fade == room_speed)
{
	instance_create_layer(x,y,"Overlay",obj_death2);
}