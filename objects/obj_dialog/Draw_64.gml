if (!dialogue_finished) {
    var _dx = 0;
var _dy = gui_h * 0.7;
var _boxw = gui_w;
var _boxh = gui_h - _dy;

draw_sprite_stretched(spr_box, 0, _dx, _dy, _boxw, _boxh);

_dx+= 16 
_dy+= 16

draw_set_font(UIfont1)

var _name = messages[current_message].name;





draw_set_colour(global.char_colors[$ _name])
draw_text(_dx, _dy, _name);


_dy+= 40;
draw_set_colour(c_white)
draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx * 2)


var hint_offset_x = 30;
var hint_offset_y = 400;

var outer_radius = 20;
var inner_radius = 12;

var space_pressed = keyboard_check(vk_space);

draw_set_color(space_pressed ? c_blue : c_black);
draw_circle(hint_offset_x + outer_radius, hint_offset_y + outer_radius, outer_radius, false);

draw_set_color(c_white);
var u_width = inner_radius * 2;
var u_height = inner_radius;
var u_x = hint_offset_x + outer_radius - u_width/2;
var u_y = hint_offset_y + outer_radius - u_height/2;

draw_line(u_x, u_y, u_x, u_y + u_height); 
draw_line(u_x + u_width, u_y, u_x + u_width, u_y + u_height);
draw_line(u_x, u_y + u_height, u_x + u_width, u_y + u_height);

draw_set_font(UIfont1);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var text_x = hint_offset_x + outer_radius*2 + 8;
var text_y = hint_offset_y + outer_radius;

var hint_text = 
"Hold SPACE to make dialogue faster\n" +
"Press SPACE to skip at the end\n" +
"Press SPACE to hide the dialogue";

draw_text(text_x, text_y, hint_text);
}

