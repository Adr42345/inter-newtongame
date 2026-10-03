draw_set_font(UIfont1);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);





var ui_scale = 3; 


var base_x = ui_x;
var base_y = ui_y;


draw_sprite_ext(
    user_icon_frame, 0,
    base_x, base_y,
    ui_scale, ui_scale,
    0, c_white, 1
);


var bar_x = base_x + 40 * ui_scale;
var bar_y = base_y - 6 * ui_scale;

var hp_ratio = hp / hp_max;

draw_sprite_ext(
    health_bar_empty, 0,
    bar_x, bar_y,
    ui_scale, ui_scale,
    0, c_white, 1
);

draw_sprite_part_ext(
    health_bar_full, 0,
    0, 0,
    sprite_get_width(health_bar_full) * hp_ratio,
    sprite_get_height(health_bar_full),
    bar_x, bar_y,
    ui_scale, ui_scale,
    c_white, 1
);

// ================== MANA BAR ==================
var mana_y = bar_y + 14 * ui_scale;
var mana_ratio = global.Player_Level / max_level;

draw_sprite_ext(
    mana_bar_empty, 0,
    bar_x, mana_y,
    ui_scale, ui_scale,
    0, c_white, 1
);

draw_sprite_part_ext(
    mana_bar_full, 0,
    0, 0,
    sprite_get_width(mana_bar_full) * mana_ratio,
    sprite_get_height(mana_bar_full),
    bar_x, mana_y,
    ui_scale, ui_scale,
    c_white, 1
);


var hearts_x = bar_x + sprite_get_width(health_bar_empty) * ui_scale + 12 * ui_scale;
var hearts_y = bar_y + 2 * ui_scale;

for (var i = 0; i < max_hearts; i++)
{
    var heart_hp = clamp(hp - (i * 2), 0, 2);

var spr;

if (heart_hp == 2)
{
    spr = full_heart;
}
else if (heart_hp == 1)
{
    spr = half_heart;
}
else
{
    spr = empty_heart;
}


    draw_sprite_ext(
        spr, 0,
        hearts_x + i * 14 * ui_scale,
        hearts_y,
        ui_scale, ui_scale,
        0, c_white, 1
    );
}


var mana_icons_y = hearts_y + 14 * ui_scale;

for (var i = 0; i < max_level; i++)
{
    var spr = (i <                 global.Player_Level) ? full_mana : empty_mana;

    draw_sprite_ext(
        spr, 0,
        hearts_x + i * 14 * ui_scale,
        mana_icons_y,
        ui_scale, ui_scale,
        0, c_white, 1
    );
}


