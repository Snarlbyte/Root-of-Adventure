/// @description
if(immune){
	shader_set(shdr_hit);
	draw_self();
	shader_reset();
} else {
	shader_set(shdr_purple);
	draw_self();
	shader_reset();
}
