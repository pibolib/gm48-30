if(!oGame.pauseMode)
{
	cShakeX = irandom_range(-cShake,cShake);
	cShakeY = irandom_range(-cShake,cShake);
	if(instance_exists(oPlayer))
	{
		cGTX = floor(lerp(floor(oPlayer.x),floor(mouse_x),0.3));
		cGTY = floor(lerp(floor(oPlayer.y),floor(mouse_y),0.3));
	}
	cScale = 1;
	x = floor(lerp(floor(x),floor(cGTX),0.1));
	y = floor(lerp(floor(y),floor(cGTY),0.1));
	xView = lerp(xView,cSizeX*cScale,0.1);
	yView = lerp(yView,cSizeY*cScale,0.1);
	cShake = lerp(cShake,0,0.05);
	cDispX = x + cShakeX;
	cDispY = y + cShakeY;
	vm = matrix_build_lookat(floor(cDispX),floor(cDispY),-10,floor(cDispX),floor(cDispY),0,0,1,0);
	pm = matrix_build_projection_ortho(xView,yView,cMaxDepthNeg,cMaxDepthPos);
	camera_set_view_mat(camera,vm);
	camera_set_proj_mat(camera,pm);
	x = clamp(x,(cSizeX*cScale)/2,room_width-(cSizeX*cScale)/2);
	y = clamp(y,(cSizeY*cScale)/2,room_height-(cSizeY*cScale)/2);
	view_camera[0] = camera;
}