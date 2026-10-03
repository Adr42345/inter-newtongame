
global.keys_found += 1;

if (global.keys_found >= 3 && global.canGoToRoom2) {
    if (global.Player_Level == 1){
                room_goto_next()
                global.Player_Level += 1
        next_room = false
    } ;
}

part_particles_create(key_particle_system, x, y, key_particle, 10);


instance_destroy();
