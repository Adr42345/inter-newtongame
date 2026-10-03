// ================== MOVEMENT ==================
move_speed = 1;

// ================== TILEMAP COLLISIONS ==================
tilemapColisions = layer_tilemap_get_id("Tiles_Col");
tilemapObj        = layer_tilemap_get_id("Tiles_Obj");
tilemapObj1       = layer_tilemap_get_id("Tiles_Obj1");
tilemapBd         = layer_tilemap_get_id("Bd");

// ================== XP / LEVEL (MANA) ==================

max_level = 3;     

xp = 0;
xp_required = 100;

// ================== HEALTH ==================
max_hearts = 4;         
hp_max = max_hearts * 2;
hp = hp_max;

// ================== UI SETTINGS ==================
ui_x = 32;
ui_y = 32;

heart_spacing = 18;
mana_spacing  = 18;
bar_width     = 80;


ps = part_system_create();
part_system_depth(ps, -100);


pt_dust = part_type_create();


part_type_shape(pt_dust, pt_shape_pixel); 
part_type_size(pt_dust, 1, 2, 0, 0.5); 
part_type_scale(pt_dust, 1, 1); 
part_type_color3(pt_dust, c_gray, c_silver, c_white); 
part_type_alpha3(pt_dust, 0.8, 0.5, 0);
part_type_speed(pt_dust, 0.5, 1, 0, 0.2);
part_type_direction(pt_dust, 80, 100, 0, 5);
part_type_life(pt_dust, 20, 30); 
part_type_blend(pt_dust, false); 

function add_xp(_xp_to_add)
{
    xp+= _xp_to_add;
    if (xp >= xp_required) {
        global.Player_Level++;
        xp-= xp_required;
        xp_required *=1.4;
        hp_total+= 5;
        hp = hp_total;
    }
}