// simple if on one, two, three for upgrades
if(keyboard_check_pressed(ord("1")) and obj_scoreboard.damageInc < .75)
{
	obj_scoreboard.damageInc += 0.25;
	self.instance_destroy();
}

if(keyboard_check_pressed(ord("2")) and obj_scoreboard.speedInc < .75)
{
	obj_scoreboard.speedInc += 0.25;
	self.instance_destroy();
}

if(keyboard_check_pressed(ord("3")) and obj_scoreboard.castSpeed < .75)
{
	obj_scoreboard.castSpeed += 0.25;
	self.instance_destroy();
}