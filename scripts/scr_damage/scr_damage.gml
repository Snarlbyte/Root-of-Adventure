function scr_damage(amount){
	self.alarm[0] = this.attackTimer;
	other.hp -= amount;
	other.immune = true;
	other.alarm[1] = other.immuneTimer;
	
}