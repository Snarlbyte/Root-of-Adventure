//Heal placeholder

if(obj_player.hp < 100){
	obj_player.hp = min(100,obj_player.hp+25);
	self.instance_destroy();
}