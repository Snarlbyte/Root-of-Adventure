/// @description
scr_keybinds();

var _moveH = right - left;
hsp	= _moveH * moveSpeed;
vsp = vsp + grv;

if(place_meeting(x,y+1,obj_wall)) && (up){
	vsp = -jumpHeight;
	jump = true;
	if(!magicAnim)
		sprite_index = spr_player_jump;
} else if(vsp > 0) {
	jump = false;
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
#region Animations
if (hsp != 0) image_xscale = (sign(hsp)*obj_player.image_yscale);
if(!magicAnim and !jump) sprite_index = (hsp != 0) ? spr_player : spr_player;
else if(!magicAnim and jump) sprite_index = spr_player_jump;
if(fire and magic) instance_create_layer(x,y,"Instances",obj_magic);
#endregion