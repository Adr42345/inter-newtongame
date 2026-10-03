if (!isstartmenu) exit;

// Gradient background
var top = c_black;
var bottom = c_gray;

for (var i = 0; i < room_height; i++) {
    var t = i / room_height;
    var r = lerp(color_get_red(top), color_get_red(bottom), t);
    var g = lerp(color_get_green(top), color_get_green(bottom), t);
    var b = lerp(color_get_blue(top), color_get_blue(bottom), t);
    draw_set_color(make_color_rgb(r, g, b));
    draw_line(0, i, room_width, i);
}

// Menu items
draw_set_font(UIfont1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var margin = 10;

for (var i = 0; i < array_length(menu_items); i++) {
    var item_x = menu_x;
    var item_y = menu_y + i * (menu_spacing + margin);

    if (i == menu_index) draw_set_color(c_orange);
    else draw_set_color(c_ltgray);

draw_rectangle(item_x - 150, item_y - 25, item_x + 150, item_y + 25, false);

    
    draw_set_color(c_black);
    draw_text(item_x, item_y, menu_items[i]);
}

draw_set_color(c_white);
draw_text(room_width / 2, room_height - 220, "Click space when you are next to an NPC to run or start a dialogue");
