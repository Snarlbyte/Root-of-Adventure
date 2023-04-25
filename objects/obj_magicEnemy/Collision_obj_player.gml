/// @description
if(obj_scoreboard.magicF){
	scr_damage(dmgF);
} else if (obj_scoreboard.magicL) {
	scr_damage(dmgL);
}
else if (obj_scoreboard.magicW) {
	scr_damage(dmgW);
}
instance_destroy(self);