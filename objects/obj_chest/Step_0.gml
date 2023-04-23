if(self.sprite_index = spr_chestO and first)
{
	instance_create_layer(x, y-self.sprite_yoffset - 50,"Instances", obj_upgrade);
	first = false;
	obj_door.open = true;
}