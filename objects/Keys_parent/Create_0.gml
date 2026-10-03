
key_particle_system = part_system_create();
part_system_depth(key_particle_system, 0);



key_particle = part_type_create();
part_type_shape(key_particle, pt_shape_star);


part_type_size(key_particle, 0.1, 0.3, 0, 0);


part_type_color1(key_particle, c_yellow);


part_type_blend(key_particle, true);


part_type_speed(key_particle, 1, 3, 0, 0);
part_type_direction(key_particle, 0, 360, 0, 0);


part_type_life(key_particle, 20, 40);
