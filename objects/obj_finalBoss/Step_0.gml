/// @description
hsp = 0;
vsp = vsp + grv;
if(instance_exists(obj_player)){
	pDirection = point_direction(x,y,obj_player.x,obj_player.y);
	pDistance = distance_to_object(obj_player);
	
	attack = (pDistance < attackRange) ? true : false;
	if (place_meeting(x,y+vsp,obj_wall)&&target&&!done) sprite_index = (attack) ?  spr_finalAttack : spr_finalBoss;
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
		vsp = -obj_player.jumpHeight;
	}
	
	if(!collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,false)){
		target = true;
		if(place_meeting(x,y+vsp,obj_wall)) && (attack){
			if(alarm[0] <= 0) or done{
				if(hp<100&&once){
					done = true;
					alarm[2] = 120;
					if(alarm[2]>0){
						sprite_index = spr_finalHarden;
						if(alarm[0] <=0){
						var temp = instance_create_layer(x-(sign(image_xscale)*28),y-45,"Instances", obj_magicEnemy);
						temp.rdirection = true;
						alarm[0] = 30;  } once = false;
					}
				} else {
				instance_create_layer(x-(sign(image_xscale)*28),y-45,"Instances", obj_magicEnemy);
				alarm[0] = 120;
				}
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