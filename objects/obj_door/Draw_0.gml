switch(sprite_index)
	{
		case spr_doorMini:
		case spr_doorBoss:
			shader_set(shdr_purple);
		case spr_doorClosed:
			draw_self();
			shader_reset();
			break;
		case spr_doorCombat:
			shader_set(shdr_fire);
			draw_self();
			shader_reset();
			break;
		case spr_doorTreasure:
			shader_set(shdr_lightning);
			draw_self();
			shader_reset();
			break;
		case spr_doorHeal:
			shader_set(shdr_green);
			draw_self();
			shader_reset();
			break;
	}