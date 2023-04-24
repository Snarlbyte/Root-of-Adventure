/// @description
if(!obj_scoreboard.magicL){
	shader_set(shdr_lightning);
	draw_self();
	shader_reset();
} else {
	draw_self();
}