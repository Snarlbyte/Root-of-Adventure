/// @description
if(!obj_scoreboard.magicF){
	shader_set(shdr_fire);
	draw_self();
	shader_reset();
} else {
	draw_self();
}