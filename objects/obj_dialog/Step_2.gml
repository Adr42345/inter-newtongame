if (current_message < 0) exit;

if (!is_array(messages) || current_message >= array_length(messages)) exit;

var _str = messages[current_message].msg;

if (current_char < string_length(_str)) {
    current_char += char_speed * (1 + keyboard_check(input_key));
    current_char = min(current_char, string_length(_str)); 
    draw_message = string_copy(_str, 1, current_char);

    if (!audio_is_playing(snd_talk)) {
        audio_play_sound(snd_talk, 1, true);
    }
} else {
    if (audio_is_playing(snd_talk)) {
        audio_stop_sound(snd_talk);
    }

    if (keyboard_check_pressed(input_key)) {
        current_message++;
        if (current_message >= array_length(messages)) {


            dialogue_finished = true

            
            if (global.Player_Level == 2 && !alarm_started && !next_room) {
    alarm[0] = room_speed * 45; 
    alarm_started = true;     

}


            
            if (next_room && global.keys_found >= 3 && global.Player_Level == 1){
                room_goto_next()
                global.Player_Level += 1
                next_room = false
                            instance_destroy();

            } else if (global.Player_Level == 1) {
                global.canGoToRoom2 = true
                                            instance_destroy();
                
            } ;

            
        } else {
            current_char = 0;
            draw_message = ""; 
        }
    }
}
