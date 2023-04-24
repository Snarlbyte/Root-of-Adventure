function scr_damage(amount){
	if(!other.immune) other.hp -= amount;
	if(other.alarm[1] > 0) {
		other.immune = true;
		other.alarm[1] = other.immuneTimer;
		}
	if(other.hp <= 0) instance_destroy(other);
}