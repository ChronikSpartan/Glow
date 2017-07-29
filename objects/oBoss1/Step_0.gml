// Set up colliders
var colliderBelow = instance_place(x, y + 1, oCollider);
var colliderRight = instance_place(x + 1, y, oCollider);
var colliderLeft = instance_place(x - 1, y, oCollider);
var breakableBelow = instance_place(x, y + 1, oBreakableBlock);
var breakableRight = instance_place(x + 1, y , oBreakableBlock);
var breakableLeft = instance_place(x - 1, y, oBreakableBlock);

path_start(pBoss1, 2, path_action_restart, false)

//hsp = dir * movementSpeed;

//if (vsp < 10) vsp += grav;

//// Horizontal Collision
//if(place_meeting(x+hsp,y,oCollider))
//{
//	while(!place_meeting(x+sign(hsp),y,oCollider))
//	{
//		x+= sign(hsp);
//	}
//	hsp = 0;
//	dir *= -1;
//}

//if(place_meeting(x+hsp,y,oColliderGlow))
//{
//	while(!place_meeting(x+sign(hsp),y,oColliderGlow))
//	{
//		x+= sign(hsp);
//	}
//	hsp = 0;
//	dir *= -1;
//}

//if(place_meeting(x+hsp,y,oBreakableBlock))
//{
//	while(!place_meeting(x+sign(hsp),y,oBreakableBlock))
//	{
//		x+= sign(hsp);
//	}
//	hsp = 0;
//	dir *= -1;
//}

//if(place_meeting(x+hsp,y,oDeathBlock))
//{
//	while(!place_meeting(x+sign(hsp),y,oDeathBlock))
//	{
//		x+= sign(hsp);
//	}
//	hsp = 0;
//	dir *= -1;
//}

//// Vertical Collision
//if(place_meeting(x,y+vsp,oCollider))
//{
//	while(!place_meeting(x,y+sign(vsp),oCollider))
//	{
//		y+= sign(vsp);
//	}
//	vsp = 0;
//	if (fearOfHeights && !position_meeting(x+(sprite_width/2)*dir, y+(sprite_height/2)+8, oCollider))
//	{
//		dir *= -1;
//	}
//}

//if(place_meeting(x,y+vsp,oColliderGlow))
//{
//	while(!place_meeting(x,y+sign(vsp),oColliderGlow))
//	{
//		y+= sign(vsp);
//	}
//	vsp = 0;
//	if (fearOfHeights && !position_meeting(x+(sprite_width/2)*dir, y+(sprite_height/2)+8, oColliderGlow))
//	{
//		dir *= -1;
//	}
//}

//if(place_meeting(x,y+vsp,oBreakableBlock))
//{
//	while(!place_meeting(x,y+sign(vsp),oBreakableBlock))
//	{
//		y+= sign(vsp);
//	}
//	vsp = 0;
//	if (fearOfHeights && !position_meeting(x+(sprite_width/2)*dir, y+(sprite_height/2)+8, oBreakableBlock))
//	{
//		dir *= -1;
//	}
//}

//if(place_meeting(x,y+vsp,oDeathBlock))
//{
//	while(!place_meeting(x,y+sign(vsp),oDeathBlock))
//	{
//		y+= sign(vsp);
//	}
//	vsp = 0;
//	if (fearOfHeights && !position_meeting(x+(sprite_width/2)*dir, y+(sprite_height/2)+8, oDeathBlock))
//	{
//		dir *= -1;
//	}
//}

//Enemy Collision
if(place_meeting(x,y,oPlayer))
{
	//Are we above enemy? (assuming CoG of both enemy and player is the same)
	if(oPlayer.y < y-8)
	{
		with (oPlayer) vsp = -jumpSpeed;
		instance_destroy();
	}
	else
	{
		room_restart();
	}
}

//x += hsp;
//y += vsp;