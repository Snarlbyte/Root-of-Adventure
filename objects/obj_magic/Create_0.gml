//set magic timer and direction

if(obj_scoreboard.magicF)
{
	obj_player.magic = false;
	obj_player.alarm[3] = 120;
	self.sprite_index = spr_fire;
}
else if( obj_scoreboard.magicL)
{
	obj_player.magic = false;
	obj_player.alarm[3] = 60;
	self.sprite_index = spr_lighting;
}

if(obj_player.image_xscale < 0)
{
	self.image_xscale = self.image_xscale*-1;
}

