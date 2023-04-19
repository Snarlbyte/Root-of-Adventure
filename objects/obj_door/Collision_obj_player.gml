//which path chosen
if (self.sprite_index = spr_doorCombat and keyboard_check_pressed(vk_down))
{
	room_goto(RoomCombat);
	obj_scoreboard.rooms += 1;
}
if (self.sprite_index = spr_doorTreasure and keyboard_check_pressed(vk_down))
{
	room_goto(RoomTreasure);
	obj_scoreboard.rooms += 1;
}
if (self.sprite_index = spr_doorHeal and keyboard_check_pressed(vk_down))
{
	room_goto(RoomHeal);
	obj_scoreboard.rooms += 1;
}

if (self.sprite_index = spr_doorMini and keyboard_check_pressed(vk_down))
{
	room_goto(RoomHeal);
	obj_scoreboard.rooms += 1;
}

if (self.sprite_index = spr_doorBoss and keyboard_check_pressed(vk_down))
{
	room_goto(RoomHeal);
	obj_scoreboard.rooms += 1;
}
