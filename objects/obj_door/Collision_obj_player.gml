//which path chosen
if (self.sprite_index = spr_doorCombat and keyboard_check_pressed(vk_down))
{
	room_goto(RoomCombat);
}
if (self.sprite_index = spr_doorTreasure and keyboard_check_pressed(vk_down))
{
	room_goto(RoomTreasure);
}
if (self.sprite_index = spr_doorHeal and keyboard_check_pressed(vk_down))
{
	room_goto(RoomHeal);
}