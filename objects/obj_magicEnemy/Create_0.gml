//set magic timer and direction
if(obj_scoreboard.magicF)
{
	image_xscale = 0.6;
	image_yscale = 0.6;
	self.sprite_index = spr_fire;
}
else if( obj_scoreboard.magicL)
{
	self.sprite_index = spr_lighting;
}
else if(obj_scoreboard.magicW){
	image_xscale = 0.5;
	image_yscale = 0.5;
	self.sprite_index = spr_wind;
	alarm[0] = 20;
}
if !rdirection direction = point_direction(x,y,obj_player.x,obj_player.y);
else direction = random_range(0,360);

tempBounce = obj_scoreboard.bounce;