/// @description Room_switching
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter))
{
	switch(room)
	{
		case rm_start:
			room_goto(rm_layers);
			break;
		case rm_win:
		case rm_gameover:
			game_restart();
			break;
	}
}