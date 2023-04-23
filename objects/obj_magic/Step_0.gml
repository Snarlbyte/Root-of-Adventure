//movement based on magic type
if(obj_scoreboard.magicF)
{
	speed = (moveSpeedF * (1 + obj_scoreboard.speedInc)) * self.image_xscale;
}
else if( obj_scoreboard.magicL)
{
	speed = (moveSpeedL * (1 + obj_scoreboard.speedInc)) * self.image_xscale;
}