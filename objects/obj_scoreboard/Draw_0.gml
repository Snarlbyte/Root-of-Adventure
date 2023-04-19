//Draw health and rooms (if use add amber count later).
if(instance_exists(obj_player))
{
	draw_set_font(Font1);
	draw_healthbar(50, 50, 450, 75, obj_player.hp , c_grey, c_red, c_lime, 0, true, false);
	draw_set_color(c_black);
	draw_text(50, 80, "Rooms: " + string(rooms));
	if(magicF)
	{
		draw_sprite_ext(spr_runeF,0,225,80,0.5,0.5,0,c_white,0.75);
	}
	else if(magicL)
	{
		draw_sprite_ext(spr_runeL,0,225,80,0.5,0.5,0,c_white,0.75);
	}
}
