//movement based on magic type
if(obj_scoreboard.magicF)
{
	speed = moveSpeedF  * self.image_xscale;
}
else if( obj_scoreboard.magicL)
{
	speed = moveSpeedL * self.image_xscale;
}
else if(obj_scoreboard.magicW){
	speed = moveSpeedW * self.image_xscale;
	if(distance_to_object(obj_player) > 150) instance_destroy(self);
}
image_angle = direction;
