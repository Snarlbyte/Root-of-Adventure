//open and choose room
if(!instance_exists(obj_deacon)){
	open = true;
}

if(open and once)
{
	if(obj_scoreboard.rooms == 4)
	{
		path = 4;
	}
	
	else if(obj_scoreboard.rooms == 9)
	{
		path = 5;
	} else if(obj_scoreboard.rooms == 10)
	{ path = 6; }
	
	else
	{
		randomize();
		percent = irandom_range(0,100);
		if(percent < 80)
		{
			path = 1;
		}
		if (percent >= 80 and percent < 95)
		{
			path = 2;
		}
		if (percent >= 95)
		{
			path = 3;
		}
	}
	switch(path)
	{
		case 1:
			self.sprite_index = spr_doorCombat;
			break;
		case 2:
			if(obj_player.hp > 95){ self.sprite_index = spr_doorCombat;
			} else { self.sprite_index = spr_doorHeal; }
			break;
		case 3:
			self.sprite_index = spr_doorTreasure;
			break;
		case 4:
			self.sprite_index = spr_doorMini;
			break;
		case 5:
		case 6:
			self.sprite_index = spr_doorBoss
			break;
	}
	once = false;
}