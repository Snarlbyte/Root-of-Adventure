//// death message and fade
bg_id = layer_get_id("Background");
if(!object_exists(obj_player))
{
	instance_create_layer(288, 352, "Overlay", obj_death1);
}

if(rooms < 1)
{
	layer_background_sprite(bg_id,spr_background);
}
else if(rooms < 5 and rooms > 0)
{
	layer_background_sprite(bg_id,spr_Inside1);
}
else if(rooms > 4 and !RoomEnd)
{
	layer_background_sprite(bg_id,spr_Inside2);
}
else if(rooms > 4 and RoomEnd)
{
}