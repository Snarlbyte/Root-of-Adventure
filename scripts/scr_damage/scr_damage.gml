function scr_damage(amount){
	other.hp -= amount;
	other.immune = true;
	other.alarm[1] = other.immuneTimer;
	
}