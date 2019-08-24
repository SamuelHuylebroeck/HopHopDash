/// @description Insert description here
// You can write your code in this editor
if(audio_is_playing(msc_polka))
{
	audio_stop_sound(msc_polka);
}
audio_play_sound(msc_polka,2,true);