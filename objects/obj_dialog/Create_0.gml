messages = [];
current_message = -1;
current_char = 0;
draw_message = "";
char_speed = 0.5;
input_key = vk_space

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

next_room = false;

timer_75 = 0;
dialogue_finished = false;

start_timer_step = 0;
timer_running = false;
alarm_started = false