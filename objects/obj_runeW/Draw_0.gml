/// @description
if(!obj_scoreboard.magicW){
	shader_set(shdr_green);
	draw_self();
	shader_reset();
} else {
	draw_self();
}