///@function music
///@arg song


for(i=0;i<array_length_1d(musicType);i++)
{
	if(argument0 != i)
	{
		musicGain[i] = lerp(musicGain[i],0,0.1);
		if(musicGain[i] = 0)
		{
			audio_stop_sound(musicType[i]);	
		}
	}
	audio_sound_gain(oGame.musicType[i],oGame.musicGain[i],0);
}
oGame.musicGain[argument0] = lerp(oGame.musicGain[argument0],oGame.mainGain*(1-(0.5*oGame.pauseMode)),0.1);
audio_sound_gain(oGame.musicType[argument0],oGame.musicGain[argument0],0);
if(!audio_is_playing(oGame.musicType[argument0]))
{
	audio_play_sound(oGame.musicType[argument0],1,0);	
}