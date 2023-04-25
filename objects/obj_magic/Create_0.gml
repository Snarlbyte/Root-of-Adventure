//set magic timer and direction
if(obj_scoreboard.magicF)
{
	if(!audio_is_playing(snd_magicF)) audio_play_sound(snd_magicF,0,false);
	image_xscale = 0.6;
	image_yscale = 0.6;
	obj_player.magic = false;
	obj_player.alarm[0] = 120 * (1 - obj_scoreboard.castSpeed);
	self.sprite_index = spr_fire;
}
else if( obj_scoreboard.magicL)
{
	if(!audio_is_playing(snd_magicL)) audio_play_sound(snd_magicL,0,false);
	obj_player.magic = false;
	obj_player.alarm[0] = 60 * (1 - obj_scoreboard.castSpeed);
	self.sprite_index = spr_lighting;
}
else if(obj_scoreboard.magicW){
	if(!audio_is_playing(snd_magicW)) audio_play_sound(snd_magicW,0,false);
	image_xscale = 0.5;
	image_yscale = 0.5;
	obj_player.magic = false;
	obj_player.alarm[0] = 30 * (1-obj_scoreboard.castSpeed);
	self.sprite_index = spr_wind;
	alarm[0] = 20;
}

direction = point_direction(x,y,mouse_x,mouse_y);

tempBounce = obj_scoreboard.bounce;