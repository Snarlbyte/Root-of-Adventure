//Draw health and rooms (if use add amber count later).
if(instance_exists(obj_player))
{
	draw_set_font(Font1);
	draw_healthbar(50, 50, 350, 75, obj_player.hp , c_grey, c_red, c_lime, 0, true, false);
	var ft;
	if(magicL){
		ft = (obj_player.alarm[0]/(60 * (1 - obj_scoreboard.castSpeed)))*100;
	} else if(magicF) {
		ft = (obj_player.alarm[0]/(120 * (1 - obj_scoreboard.castSpeed)))*100;
	} else if(magicW){
		ft = (obj_player.alarm[0]/(30 * (1 - obj_scoreboard.castSpeed)))*100;
	}
	draw_healthbar(50, 80, 350, 100, ft , c_grey, c_red, c_lime, 0, false, false);
	draw_set_color(c_black);
	draw_text(50, 110, "Rooms: " + string(rooms));
	draw_text(50, 140, "Score: " + string(score));
	if(magicF)
	{
		draw_sprite_ext(spr_runeF,0,375,60,0.5,0.5,0,c_white,0.75);
	}
	else if(magicL)
	{
		draw_sprite_ext(spr_runeL,0,375,60,0.5,0.5,0,c_white,0.75);
	}
	else if(magicW)
	{
		draw_sprite_ext(spr_runeW,0,375,60,0.7,0.4,0,c_white,0.75);
	}
}
