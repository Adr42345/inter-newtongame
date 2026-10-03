if (!isstartmenu) exit;

mouse_over_index = -1;

for (var i = 0; i < array_length(menu_items); i++) {
    var item_x = menu_x;
    var item_y = menu_y + i * menu_spacing;

    var left = item_x - 150;
    var right = item_x + 150;
    var top = item_y - 25;
    var bottom = item_y + 25;

    if (mouse_x > left && mouse_x < right && mouse_y > top && mouse_y < bottom) {
        mouse_over_index = i;
        menu_index = i;
    }
}

if (keyboard_check_pressed(vk_up)) {
    menu_index -= 1;
    if (menu_index < 0) menu_index = array_length(menu_items) - 1;
}

if (keyboard_check_pressed(vk_down)) {
    menu_index += 1;
    if (menu_index >= array_length(menu_items)) menu_index = 0;
}

if (keyboard_check_pressed(vk_enter) || (mouse_check_button_pressed(mb_left) && mouse_over_index != -1)) {
    switch (menu_index) {
        case 0:
            isstartmenu = false;
            room_goto(Office);
            break;
        case 1:
            show_message("Options menu not implemented yet!");
            break;
        case 2:
            game_end();
            break;
    }
}
