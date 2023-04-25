//which path chosen
if keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")){
	switch(self.sprite_index)
	{
		case spr_doorCombat:	
			room_goto(RoomCombat);
			scr_travel();
			break;
		case spr_doorTreasure: 
			room_goto(RoomTreasure);
			scr_travel();
			break;
		case spr_doorHeal:
			room_goto(RoomHeal);
			scr_travel();
			break;
		case spr_doorMini:
			room_goto(RoomMini);
			scr_travel();
			break;
		case spr_doorBoss:
			if(path != 6){
				room_goto(RoomBoss);
				scr_travel();
			} else {
				room_goto(RoomEnd); // PUT WIN SCREEN HERE
			}
			break;
		case spr_doorClosed:
			break;
		default:
			break;
	}
}