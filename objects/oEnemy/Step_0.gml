vsp = vsp + grv;

// Horizontal collision
if (place_meeting(x+hsp,y,oPlatform))
{
	while (!place_meeting(x+sign(hsp),y,oPlatform))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp; 

// Vertical collision
if (place_meeting(x,y+vsp,oPlatform))
{
	while (!place_meeting(x,y+sign(vsp),oPlatform))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp; 

// Animation
if (!place_meeting(x,y+1,oPlatform))
{
	sprite_index = sEnemygA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0) 
	{
		sprite_index = sEnemyg; 
	}
	else 
	{
		sprite_index = sEnemygR; 
	}
}

if (hsp != 0) image_xscale = sign(hsp);


















