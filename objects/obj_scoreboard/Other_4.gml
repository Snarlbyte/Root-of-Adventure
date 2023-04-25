/// @description
if(room == RoomCombat){
	if(!audio_is_playing(snd_musicN)){
		audio_stop_all();
		audio_play_sound(snd_musicN,1,true);
	}
	var t = irandom_range(1,3);
	switch(t){
		case 1:
			if(rooms > 4) instance_create_layer(irandom_range(960,1344),768,"Instances",obj_deacon);
			instance_create_layer(irandom_range(576,960),768,"Instances",obj_deacon);
			break;
		case 2:
			if(rooms > 4) instance_create_layer(irandom_range(960,1806),32,"Instances",obj_bat);
			instance_create_layer(irandom_range(114,960),32,"Instances",obj_bat);
			break;
		case 3:
			if(rooms > 4) instance_create_layer(irandom_range(960,1344),768,"Instances",obj_deaconMelee);
			instance_create_layer(irandom_range(576,960),768,"Instances",obj_deaconMelee);
			break;
	}
} else if(room == RoomBoss) {
	audio_stop_all();
	audio_play_sound(snd_musicBoss,1,true);
} else if(room == RoomMini){
	audio_stop_all();
	audio_play_sound(snd_musicMini,1,true);
} else {
	if(!audio_is_playing(snd_musicN)){
		audio_stop_all();
		audio_play_sound(snd_musicN,1,true);
	}
}