/// @description slam
image_index = 1;
audio_play_sound(snd_hit,1,false);
var temp = instance_create_layer(x,y,"Instances", obj_enemyHitbox);
	temp.image_xscale = image_xscale;
	attack = false;