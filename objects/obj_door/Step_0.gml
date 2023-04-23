//open and choose room

if(open and once)
{
	if(obj_scoreboard.rooms == 4)
	{
		path = 4;
	}
	
	else if(obj_scoreboard.rooms == 9)
	{
		path = 5;
	}
	
	else
	{
		randomize();
		percent = irandom_range(0,100);
		if(percent < 80)
		{
			path = 1;
		}
		if (percent > 80 and percent < 95)
		{
			path = 2;
		}
		if (percent > 95)
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
			self.sprite_index = spr_doorTreasure;
			break;
		case 3:
			self.sprite_index = spr_doorHeal;
			break;
		case 4:
			self.sprite_index = spr_doorMini;
			break;
		case 5:
			self.sprite_index = spr_doorBoss;
	}
	once = false;
}