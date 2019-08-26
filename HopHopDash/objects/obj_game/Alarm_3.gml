/// @description level end reached
// You can write your code in this editor
switch(room){
	case rm_game:
		end_reached = false;
		room_goto(rm_win);
		break;
}