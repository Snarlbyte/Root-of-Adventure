//Heal placeholder

if(obj_player.hp < 100)
{
	obj_player.hp += 25;
	obj_door.open = true;
	self.instance_destroy();
}
else
{
	obj_door.open = true;
	self.instance_destroy();
}