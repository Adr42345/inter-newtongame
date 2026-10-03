if (surface_exists(lightning_surface) == false) {
    lightning_surface = surface_create(room_width, room_height)
}

surface_set_target(lightning_surface)
draw_clear_alpha(c_black, 0.2);

with (obj_lighting_cutout) {
    gpu_set_blendmode(bm_subtract);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_yellow, 1)
    gpu_set_blendmode(bm_normal);
}

surface_reset_target();

draw_surface(lightning_surface, 0, 0)