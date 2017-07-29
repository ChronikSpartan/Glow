key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space);
key_jump_released = keyboard_check_released(vk_space);
key_left = -keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
right_mb = mouse_check_button(mb_right);
left_mb = mouse_check_button(mb_left);

// Set up colliders
var colliderBelow = instance_place(x, y + 1, oCollider);
var colliderRight = instance_place(x + 1, y, oCollider);
var colliderLeft = instance_place(x - 1, y, oCollider);
var colliderGlowBelow = instance_place(x, y + 1, oColliderGlow);
var colliderGlowRight = instance_place(x + 1, y, oColliderGlow);
var colliderGlowLeft = instance_place(x - 1, y, oColliderGlow);
var breakableBelow = instance_place(x, y + 1, oBreakableBlock);
var breakableRight = instance_place(x + 1, y , oBreakableBlock);
var breakableLeft = instance_place(x - 1, y, oBreakableBlock);

// Animation
if (key_jump)
{
	//sprite_index = sPlayerJump;
	playerState = "JUMP";
}
else if (hsp > 0)
{
	//sprite_index = sPlayerMove;
	//image_xscale = 1;
	playerState = "MOVE_RIGHT";
}
else if (hsp < 0)
{
	//sprite_index = sPlayerMove;
	//image_xscale = -1;
	playerState = "MOVE_LEFT";
}
else if(!colliderBelow && !colliderGlowBelow && !breakableBelow)
{	
	if((colliderLeft > 0) || (breakableLeft > 0) || (colliderGlowLeft > 0))
	{
		//sprite_index = sPlayerOnWall;
		//image_xscale = 1;
		playerState = "WALL_LEFT";
	}
	else if((colliderRight > 0) || (breakableRight > 0) || (colliderGlowRight > 0))
	{
		//sprite_index = sPlayerOnWall;
		//image_xscale = -1;
		playerState = "WALL_RIGHT";
	}
	else playerState = "STANDING";//sprite_index = sPlayer;
}
else playerState = "STANDING";
//sprite_index = sPlayer;


//React to inputs
movement =  key_left + key_right;

if(colliderBelow || breakableBelow || colliderGlowBelow || (jumpCount < 1))
{
	if(movement!=0) hsp += movement * 0.5; else hsp = movement;
}
else if(movement!=0) hsp += movement * 0.5;

if (hsp > movementSpeed) hsp = movementSpeed;

if (hsp < -movementSpeed) hsp = -movementSpeed;

if (vsp < 10) vsp += grav;

// Fall off screen
if(y > room_height)	room_restart();

var horizontalJump = movementSpeed;

if(jumpCount > 0)
{
	//jump		
	//variable height	
	if(key_jump)
	{
		//wall jump
		if (((colliderRight > 0) || (breakableRight > 0) || (colliderGlowRight > 0)) && ((!colliderBelow && !breakableBelow && !colliderGlowBelow)))
		{			
				vsp = -jumpSpeed+10;
				hsp = -horizontalJump;		
		}			
		else if (((colliderLeft > 0) || (breakableLeft > 0) || (colliderGlowLeft > 0)) && ((!colliderBelow && !breakableBelow && !colliderGlowBelow)))
		{
				vsp = -jumpSpeed+10;
				hsp = horizontalJump;		
		}
		else if (jumpCount > 0)
		{
			vsp = -jumpSpeed;
			jumpCount -= 1;
			
		}
	}
		
	if((vsp < 0) && (!key_jump_held))
	{
		vsp = max(vsp, -jumpSpeed/4);
	}
}


if ((colliderBelow > 0) || (colliderRight > 0) || (colliderLeft > 0)
	|| (breakableBelow > 0) || (breakableRight > 0) || (breakableLeft > 0)
	|| (colliderGlowBelow > 0) || (colliderGlowRight > 0) || (colliderGlowLeft > 0))
{
	jumpCount = 1;	
}

/////////////////////////////// Handle Block Collision////////////////////////
//Handle all HSP stuff and then VSP so that collisions don't stick in diagonal movement

if(place_meeting(x+hsp,y,oCollider))
{
	while(!place_meeting(x+sign(hsp),y,oCollider))
	{
		x+= sign(hsp);
	}
	hsp = 0;
}

if(place_meeting(x+hsp,y,oColliderGlow))
{
	while(!place_meeting(x+sign(hsp),y,oColliderGlow))
	{
		x+= sign(hsp);
	}
	hsp = 0;	
}

if(place_meeting(x+hsp,y,oBreakableBlock))
{
	while(!place_meeting(x+sign(hsp),y,oBreakableBlock))
	{
		x+= sign(hsp);
	}
	hsp = 0;
}

x += hsp;

if(place_meeting(x,y+vsp,oCollider))
{
	while(!place_meeting(x,y+sign(vsp),oCollider))
	{
		y+= sign(vsp);
	}
	vsp = 0;
	onGround = true;
}

if(place_meeting(x,y+vsp,oColliderGlow))
{
	while(!place_meeting(x,y+sign(vsp),oColliderGlow))
	{
		y+= sign(vsp);
	}
	vsp = 0;
	onGround = true;
}


if(place_meeting(x,y+vsp,oBreakableBlock))
{
	while(!place_meeting(x,y+sign(vsp),oBreakableBlock))
	{
		y+= sign(vsp);
	}
	vsp = 0;
	onGround = true;
}

y += vsp;

///////////////////////////////////////////////////////////////////////////////

///////////////////////// Handle breakable blocks//////////////////////////////

var breakableInstanceRight = instance_place(x + 1, y, oBreakableBlock);
var breakableInstanceLeft = instance_place(x - 1, y, oBreakableBlock);
var breakableInstanceUp = instance_place(x, y - 1, oBreakableBlock);
var breakableInstanceDown = instance_place(x, y + 1, oBreakableBlock);

if(breakableInstanceRight > 0)
{
	// If Variable
	with(breakableInstanceRight) var otherSetToBreak = setToBreak == "false";
	if(otherSetToBreak)
	{
		// Assign Variable
		with(breakableInstanceRight) {
		setToBreak = "true";
	
		}

		// Set Alarm Countdown
		with(breakableInstanceRight) {
		alarm_set(0, 20);
	
		}
	}
}

if(breakableInstanceLeft > 0)
{
	// If Variable
	with(breakableInstanceLeft) var otherSetToBreak = setToBreak == "false";
	if(otherSetToBreak)
	{
		// Assign Variable
		with(breakableInstanceLeft) {
		setToBreak = "true";
	
		}

		// Set Alarm Countdown
		with(breakableInstanceLeft) {
		alarm_set(0, 20);
	
		}
	}
}

if(breakableInstanceUp > 0)
{
	// If Variable
	with(breakableInstanceUp) var otherSetToBreak = setToBreak == "false";
	if(otherSetToBreak)
	{
		// Assign Variable
		with(breakableInstanceUp) {
		setToBreak = "true";
	
		}

		// Set Alarm Countdown
		with(breakableInstanceUp) {
		alarm_set(0, 20);
	
		}
	}
}

if(breakableInstanceDown > 0)
{
	// If Variable
	with(breakableInstanceDown) var otherSetToBreak = setToBreak == "false";
	if(otherSetToBreak)
	{
		// Assign Variable
		with(breakableInstanceDown) {
		setToBreak = "true";
	
		}

		// Set Alarm Countdown
		with(breakableInstanceDown) {
		alarm_set(0, 20);
	
		}
	}
}
/////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////Handle shooting //////////////////////////////

if (left_mb)
{
	if(cooldown <= 0)
	{
		instance_create_layer(x, y, "Instances", oBullet);
	
		cooldown = 20;
	}
}

cooldown += -1;

// Handle alternate bullets

if(alternateBullets > 0)
{
	if (right_mb)
	{
		if(alternateCooldown <= 0)
		{
			if(bulletType == "sticky")
			{
				instance_create_layer(x, y, "Instances", oStickyBullet);
			}
		
			else
			{
				if(bulletType == "pinball")
				{
					instance_create_layer(x, y, "Instances", oPinballBullet);
				}
			
				else
				{
					if(bulletType == "bomb")
					{
						instance_create_layer(x, y, "Instances", oBomb);
					}
				}
			}
		
			alternateBullets += - 1;
		
			alternateCooldown = 15;
		}
	}
}

alternateCooldown += -1;

///////////////////////////////////////////////////////////////////////////////