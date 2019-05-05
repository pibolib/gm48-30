if(instance_exists(oCamera))
{
	gain = oGame.audioGain * (distance_to_object(oCamera) < 250);
}
else
{
	gain = oGame.audioGain;	
}
audio_sound_gain(argument[0],gain,0);
if(argument[1] = "chromaPitch")
{
	audio_sound_pitch(argument[0],choose(1,13/12,7/6,15/12,4/3,17/12,3/2,19/12,5/3,21/12,11/6,23/12,2));	
}
else if(argument[1] = "noPitch")
{
	audio_sound_pitch(argument[0],1);
}
else
{
	audio_sound_pitch(argument[0],random_range(0.8,1.2));
}
if(argument[2] = "checkPlay")
{
	if(!audio_is_playing(argument[0]))
	{
		audio_play_sound(argument[0],1,0);
	}
}
else
{
	audio_play_sound(argument[0],1,0);
}