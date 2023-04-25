/// @description
if(obj_scoreboard.magicF){
	shader_set(shdr_fire);
	draw_self();
	shader_reset();
} else if(obj_scoreboard.magicL){
	shader_set(shdr_lightning);
	draw_self();
	shader_reset();
}
else if(obj_scoreboard.magicW){
	shader_set(shdr_green);
	draw_self();
	shader_reset();
}