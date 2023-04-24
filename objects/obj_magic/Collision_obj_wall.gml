/// @description
if(tempBounce > 0){
	move_bounce_all(false);
	tempBounce -= 1;
} else if(!obj_scoreboard.magicW){
	instance_destroy(self);
}