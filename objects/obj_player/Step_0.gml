if (instance_exists(obj_dialog) && !obj_dialog.dialogue_finished) exit;

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"))

if ( global.Player_Level <= 1 ) {
move_and_collide(_hor * move_speed, _ver * move_speed, [tilemapColisions, tilemapObj, tilemapObj1, tilemapBd])
} else if (global.Player_Level == 2) {
    move_and_collide(_hor * move_speed * 1.5, _ver * move_speed * 1.5, [layer_tilemap_get_id("First_2"), 
    layer_tilemap_get_id("Objects"), layer_tilemap_get_id("Top_Objects"), layer_tilemap_get_id("Top_Objects2")])
}else if (global.Player_Level == 3) {
        move_and_collide(_hor * move_speed, _ver * move_speed * 1.2, [layer_tilemap_get_id("Col_1"), layer_tilemap_get_id("objects"),
        layer_tilemap_get_id("Obj_2"), layer_tilemap_get_id("Obj_3"), layer_tilemap_get_id("Objects_4"), layer_tilemap_get_id("Objects_5")])
}
 else {
    move_and_collide(_hor * move_speed, _ver * move_speed, [])
}
    
if (_hor != 0 or _ver != 0) {
    if (_ver > 0) sprite_index = swalk_down
    else if (_ver < 0) sprite_index = swalk_up

    if (_hor > 0) sprite_index = swalk_right
    else if (_hor < 0) sprite_index = swalk_left

    if (!audio_is_playing(walking)) audio_play_sound(walking, 1, true)
} else {
    if (sprite_index == swalk_down) sprite_index = sidle_down
    else if (sprite_index == swalk_up) sprite_index = sidle_up
    else if (sprite_index == swalk_right) sprite_index = sidle_right
    else if (sprite_index == swalk_left) sprite_index = sidle_left

    audio_stop_sound(walking)
}