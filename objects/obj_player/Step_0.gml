/// @description
scr_keybinds();

var _moveH = right - left;
var _moveV = down - up;
hsp	= _moveH * moveSpeed;
vsp = _moveV * moveSpeed;

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
if(fire and magic) instance_create_layer(x,y,"Instances",obj_magic);
#endregion