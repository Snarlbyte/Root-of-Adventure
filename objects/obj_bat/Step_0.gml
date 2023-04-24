/// @description
/// @description
hsp = 0;
if(object_exists(obj_player)){
	pDirection = point_direction(x,y,obj_player.x,obj_player.y);
	pDistance = distance_to_object(obj_player);
	
	attack = (pDistance < attackRange) ? true : false;
	if(target) {
		sprite_index = spr_bat;
		direction = pDirection;
		speed = moveSpeed;
	}
	if(pDirection > 90 && pDirection < 270){
		image_xscale = tempScale;
	} else {
		image_xscale = -tempScale;
	}
	
	if(!collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,false) && (pDistance < attackRange)){
		target = true;
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