/// @description
if(obj_scoreboard.magicF){
	scr_damage(dmgF * (1 + obj_scoreboard.damageInc));
} else if (obj_scoreboard.magicL) {
	scr_damage(dmgL * (1 + obj_scoreboard.damageInc));
}
else if (obj_scoreboard.magicW) {
	scr_damage(dmgW * (1 + obj_scoreboard.damageInc));
}
instance_destroy(self);