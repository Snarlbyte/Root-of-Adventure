//set and allign font
draw_set_font(Font1)
draw_set_valign(fa_top)
draw_set_halign(fa_left)

//get height and width for main
var new_w = 0;
for (var i = 0; i < op_length; i++)
{
	var op_w = string_width(options[i]);
	new_w = max(new_w, op_w);
}

width = new_w + margin*2
height = margin*2 + string_height(options[0]) + (op_length-1)*space;
x= 415;
y= 220;



//draw menu background

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width,height/sprite_height, 0, c_white, 1);


//draw font and options for  menu
for (var i = 0; i < op_length; i++)
{
	var c = c_white;
	draw_text_color(x+margin, y+margin + space*i, options[i], c, c, c, c, 1);
}

