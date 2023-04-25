/// @description
/// @description
hsp = 0;
vsp = vsp + grv;
if(instance_exists(obj_player)){
	pDirection = point_direction(x,y,obj_player.x,obj_player.y);
	pDistance = distance_to_object(obj_player);
	
	if((pDistance < attackRange) && (alarm[0]<=0)) attack = true;
	if (place_meeting(x,y+vsp,obj_wall)&&target) sprite_index = (attack) ?  spr_guardHammer : spr_guardIdle;
	if(target){
		if(pDirection > 90 && pDirection < 270){
			image_xscale = tempScale;
			if(attack) hsp = 0;
			else hsp = -moveSpeed;
		} else {
			image_xscale = -tempScale;
			if(attack) hsp = 0;
			else hsp = moveSpeed;
		}
	}
	
	if(place_meeting(x,y+vsp,obj_wall)) && (obj_player.y < y) && (target) && (!attack){
		vsp = -4;
	}
	
	if(!collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,false)){
		target = true;
		if(place_meeting(x,y+vsp,obj_wall)) && (spr_guardHammer){
			if(alarm[0] <= 0){
				alarm[2] = 30;
				alarm[0] = 240;
				alarm[3] = 90;
			}
		}
	} else {target = false;}
	
	if(!target){

	}
}

#region Collision
if(place_meeting(x+hsp, y, obj_wall)){
	while(!place_meeting(x+sign(hsp),y,obj_wall)){
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

if(place_meeting(x,y+vsp,obj_wall)){
	while(!place_meeting(x,y+sign(vsp),obj_wall)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
#endregion