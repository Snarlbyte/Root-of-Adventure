function scr_travel(){
	tempX = self.x
	tempY = self.y
	obj_scoreboard.rooms += 1;
	obj_player.x = tempX;
	obj_player.y = tempY;
}