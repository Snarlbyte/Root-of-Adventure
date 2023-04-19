//movement based on magic type
if(obj_scoreboard.magicF)
{
	speed = moveSpeedF * self.image_xscale;
}
else if( obj_scoreboard.magicL)
{
	speed = moveSpeedL * self.image_xscale;
}