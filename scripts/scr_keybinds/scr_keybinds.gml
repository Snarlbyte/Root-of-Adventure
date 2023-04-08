function scr_keybinds(){
	// Disable Movement
	if keyboard_check_pressed(vk_escape) enableUI = (enableUI) ? true : false;
	up = keyboard_check(vk_up) or keyboard_check(ord("W"))
	down = keyboard_check(vk_down) or keyboard_check(ord("S"))
	left = keyboard_check(vk_left) or keyboard_check(ord("A"))
	right = keyboard_check(vk_right) or keyboard_check(ord("D"))
	interact = keyboard_check(vk_space) or keyboard_check_pressed(ord("E"))
	fire = keyboard_check(ord("Z")) or keyboard_check(vk_space)
}