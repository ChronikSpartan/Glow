/// @description Execute Code
// Surfaces are volatile 
// Always check that they haven't been destroyed 
if (surface_exists(surf)) {
    surface_set_target(surf);

    // The following three lines set the 'dark' overlay
    draw_set_color(c_black);
    draw_set_alpha(1);
    draw_rectangle(0, 0, room_width, room_height, 0);

    // Setting the blend mode to 'subtract' is what allows us to "cut holes" out of the overlay
    gpu_set_blendmode(bm_subtract);
    draw_set_color(c_white);
    // Draw circles in the overlay with your different light sources
    // Note that I add randomization to the position and radius to mimic a flicker effect
    			
	with (oExplode){
        draw_set_alpha(oExplode.explodeAlpha);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), oExplode.explodeSize + random_range(-1, 1), false);
	}
	
	with (oBombExplode){
        draw_set_alpha(oBombExplode.explodeAlpha);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), oBombExplode.explodeSize + random_range(-1, 1), false);
	}


	
	with (oBombDot){
		randomColour = make_colour_rgb(random(255), random(255), random(255));
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		
        draw_set_alpha(1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 10 + random_range(-1, 1), false);
		draw_set_alpha(0.8);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 15 + random_range(-1, 1), false);
		draw_set_alpha(0.7);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 20 + random_range(-1, 1), false);
		draw_set_alpha(0.6);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 25 + random_range(-1, 1), false);
		draw_set_alpha(0.5);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 30 + random_range(-1, 1), false);
		draw_set_alpha(0.4);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 35 + random_range(-1, 1), false);
		draw_set_alpha(0.3);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 40 + random_range(-1, 1), false);
		draw_set_alpha(0.2);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 45 + random_range(-1, 1), false);
		draw_set_alpha(0.1);
        draw_circle(x + randomRangeX, y + randomRangeY, 50 + randomRangeSize, false);
		
		l_sprite = sGlow; //sprite to use (Always use white sprite with gradient for best result.)
		l_xscale = 1; // Xscale factor of the sprite.
		l_yscale = 1; // Yscale factor of the sprite.
		l_color[0] = c_red; // The light color. (Black is no color.)
		l_color[1] = c_teal;
		l_color[2] = c_fuchsia;
		l_color[3] = c_aqua;
		l_color[4] = c_yellow;
		l_color[5] = c_purple;
		l_color[6] = c_lime;
		l_flick_id = 1; //Flickering. That affects the size of BOTH Xscale and Yscale.
		l_max_range = 1;
		l_flick = choose(1, 1, 1, 1, 1, 1, l_flick_id); 
		
		gpu_set_blendmode(bm_zero); //Add some color
        draw_sprite_ext(spr_gradient, 0, x + randomRangeX, y + randomRangeY, l_xscale*l_flick, l_yscale*l_flick, 0, l_color[random_range(0, 6)], 0.7); //You can change the last argument here.        
        gpu_set_blendmode(bm_subtract);
		draw_set_color(c_white);
	}
	
	with (oBomb){
        draw_set_alpha(1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 20 + random_range(-1, 1), false);
		draw_set_alpha(0.8);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 30 + random_range(-1, 1), false);
		draw_set_alpha(0.7);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 40 + random_range(-1, 1), false);
		draw_set_alpha(0.6);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 50 + random_range(-1, 1), false);
		draw_set_alpha(0.5);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 60 + random_range(-1, 1), false);
		draw_set_alpha(0.4);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 70 + random_range(-1, 1), false);
		draw_set_alpha(0.3);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 80 + random_range(-1, 1), false);
		draw_set_alpha(0.2);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 90 + random_range(-1, 1), false);
		draw_set_alpha(0.1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 100 + random_range(-1, 1), false);
	}
	
	with (oBullet){
		draw_set_alpha(1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 20 + random_range(-1, 1), false);
		draw_set_alpha(0.8);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 25 + random_range(-1, 1), false);
		draw_set_alpha(0.7);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 30 + random_range(-1, 1), false);
		draw_set_alpha(0.6);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 35 + random_range(-1, 1), false);
		draw_set_alpha(0.5);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 40 + random_range(-1, 1), false);
		draw_set_alpha(0.4);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 45 + random_range(-1, 1), false);
		draw_set_alpha(0.3);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 50 + random_range(-1, 1), false);
		draw_set_alpha(0.2);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 55 + random_range(-1, 1), false);
		draw_set_alpha(0.1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 60 + random_range(-1, 1), false);
	}
	
	with (oStickyBullet){
        draw_set_alpha(1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 20 + random_range(-1, 1), false);
		draw_set_alpha(0.8);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 30 + random_range(-1, 1), false);
		draw_set_alpha(0.7);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 40 + random_range(-1, 1), false);
		draw_set_alpha(0.6);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 50 + random_range(-1, 1), false);
		draw_set_alpha(0.5);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 60 + random_range(-1, 1), false);
		draw_set_alpha(0.4);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 70 + random_range(-1, 1), false);
		draw_set_alpha(0.3);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 80 + random_range(-1, 1), false);
		draw_set_alpha(0.2);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 90 + random_range(-1, 1), false);
		draw_set_alpha(0.1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 100 + random_range(-1, 1), false);
	}
	
	 with (oPlayer){		
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
        //draw_set_alpha(1);
        //draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 20 + random_range(-1, 1), false);
		//draw_set_alpha(0.8);
        //draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 30 + random_range(-1, 1), false);
		//draw_set_alpha(0.7);
        //draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 40 + random_range(-1, 1), false);
		//draw_set_alpha(0.6);
        //draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 50 + random_range(-1, 1), false);
		//draw_set_alpha(0.5);
        //draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 60 + random_range(-1, 1), false);
		//draw_set_alpha(0.4);
        //draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 70 + random_range(-1, 1), false);
		//draw_set_alpha(0.3);
        //draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 80 + random_range(-1, 1), false);
		//draw_set_alpha(0.2);
        //draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 90 + random_range(-1, 1), false);
		//draw_set_alpha(0.1);
        //draw_circle(x + randomRangeX, y + randomRangeY, 100 + randomRangeSize, false);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oDoor){
		draw_set_alpha(1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 20 + random_range(-1, 1), false);
		draw_set_alpha(0.8);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 25 + random_range(-1, 1), false);
		draw_set_alpha(0.7);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 30 + random_range(-1, 1), false);
		draw_set_alpha(0.6);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 35 + random_range(-1, 1), false);
		draw_set_alpha(0.5);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 40 + random_range(-1, 1), false);
		draw_set_alpha(0.4);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 45 + random_range(-1, 1), false);
		draw_set_alpha(0.3);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 50 + random_range(-1, 1), false);
		draw_set_alpha(0.2);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 55 + random_range(-1, 1), false);
		draw_set_alpha(0.1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 60 + random_range(-1, 1), false);
	}
	
	with (oEnterLevel){
		draw_set_alpha(1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 20 + random_range(-1, 1), false);
		draw_set_alpha(0.8);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 25 + random_range(-1, 1), false);
		draw_set_alpha(0.7);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 30 + random_range(-1, 1), false);
		draw_set_alpha(0.6);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 35 + random_range(-1, 1), false);
		draw_set_alpha(0.5);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 40 + random_range(-1, 1), false);
		draw_set_alpha(0.4);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 45 + random_range(-1, 1), false);
		draw_set_alpha(0.3);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 50 + random_range(-1, 1), false);
		draw_set_alpha(0.2);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 55 + random_range(-1, 1), false);
		draw_set_alpha(0.1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 60 + random_range(-1, 1), false);
	}
	
	with (oEnterDoor){
		draw_set_alpha(1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 20 + random_range(-1, 1), false);
		draw_set_alpha(0.8);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 25 + random_range(-1, 1), false);
		draw_set_alpha(0.7);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 30 + random_range(-1, 1), false);
		draw_set_alpha(0.6);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 35 + random_range(-1, 1), false);
		draw_set_alpha(0.5);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 40 + random_range(-1, 1), false);
		draw_set_alpha(0.4);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 45 + random_range(-1, 1), false);
		draw_set_alpha(0.3);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 50 + random_range(-1, 1), false);
		draw_set_alpha(0.2);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 55 + random_range(-1, 1), false);
		draw_set_alpha(0.1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 60 + random_range(-1, 1), false);
	}
	
	with (oColliderGlow){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_set_alpha(1);
        draw_circle(x + 15 + random_range(-1, 1), y + 15 + random_range(-1, 1), 20 + random_range(-1, 1), false);
		draw_set_alpha(0.8);
        draw_circle(x + 15 + random_range(-1, 1), y + 15 + random_range(-1, 1), 25 + random_range(-1, 1), false);
		draw_set_alpha(0.7);
        draw_circle(x + 15 + random_range(-1, 1), y + 15 + random_range(-1, 1), 30 + random_range(-1, 1), false);
		draw_set_alpha(0.6);
        draw_circle(x + 15 + random_range(-1, 1), y + 15 + random_range(-1, 1), 35 + random_range(-1, 1), false);
		draw_set_alpha(0.5);
        draw_circle(x + 15 + random_range(-1, 1), y + 15 + random_range(-1, 1), 40 + random_range(-1, 1), false);
		draw_set_alpha(0.4);
        draw_circle(x + 15 + random_range(-1, 1), y + 15 + random_range(-1, 1), 45 + random_range(-1, 1), false);
		draw_set_alpha(0.3);
        draw_circle(x + 15 + random_range(-1, 1), y + 15 + random_range(-1, 1), 50 + random_range(-1, 1), false);
		draw_set_alpha(0.2);
        draw_circle(x + 15 + random_range(-1, 1), y + 15 + random_range(-1, 1), 55 + random_range(-1, 1), false);
		draw_set_alpha(0.1);
        draw_circle(x + 15 + randomRangeX, y + 15 + randomRangeY, 60 + randomRangeSize, false);
	}
	
		with (oPinballBullet){
		randomColour = make_colour_rgb(random(255), random(255), random(255));
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
        draw_set_alpha(1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 20 + random_range(-1, 1), false);
		draw_set_alpha(0.8);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 30 + random_range(-1, 1), false);
		draw_set_alpha(0.7);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 40 + random_range(-1, 1), false);
		draw_set_alpha(0.6);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 50 + random_range(-1, 1), false);
		draw_set_alpha(0.5);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 60 + random_range(-1, 1), false);
		draw_set_alpha(0.4);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 70 + random_range(-1, 1), false);
		draw_set_alpha(0.3);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 80 + random_range(-1, 1), false);
		draw_set_alpha(0.2);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 90 + random_range(-1, 1), false);
		draw_set_alpha(0.1);
        draw_circle(x + randomRangeX, y + randomRangeY, 100 + randomRangeSize, false);
		
		l_sprite = sGlow; //sprite to use (Always use white sprite with gradient for best result.)
		l_xscale = 2; // Xscale factor of the sprite.
		l_yscale = 2; // Yscale factor of the sprite.
		l_color[0] = c_red; // The light color. (Black is no color.)
		l_color[1] = c_teal;
		l_color[2] = c_fuchsia;
		l_color[3] = c_aqua;
		l_color[4] = c_yellow;
		l_color[5] = c_purple;
		l_color[6] = c_lime;
		l_flick_id = 1; //Flickering. That affects the size of BOTH Xscale and Yscale.
		l_max_range = 1;
		l_flick = choose(1, 1, 1, 1, 1, 1, l_flick_id); 
		
		gpu_set_blendmode(bm_zero); //Add some color
        draw_sprite_ext(spr_gradient, 0, x + randomRangeX, y + randomRangeY, l_xscale*l_flick, l_yscale*l_flick, 0, l_color[colour], 0.7); //You can change the last argument here.        
        gpu_set_blendmode(bm_subtract);
		draw_set_color(c_white);
	}
	
	 with (oBoss1){	
		gpu_set_blendmode(bm_normal);
		draw_set_color(c_black);	
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		//draw_set_alpha(0.1);
        //draw_circle(x + randomRangeX, y + randomRangeY, 190 + randomRangeSize, false);
        //draw_set_alpha(0.2);
        //draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 180 + random_range(-1, 1), false);
		//draw_set_alpha(0.3);
        //draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 170 + random_range(-1, 1), false);
		//draw_set_alpha(0.4);
        //draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 160 + random_range(-1, 1), false);
		//draw_set_alpha(0.5);
        //draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 150 + random_range(-1, 1), false);
		//draw_set_alpha(0.6);
        //draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 140 + random_range(-1, 1), false);
		//draw_set_alpha(0.7);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 130 + random_range(-1, 1), false);
		draw_set_alpha(0.8);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 120 + random_range(-1, 1), false);
		draw_set_alpha(0.9);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 110 + random_range(-1, 1), false);
		draw_set_alpha(1);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 100 + random_range(-1, 1), false);
		
	}
	
    // Reset all of your draw stuff
    gpu_set_blendmode(bm_normal);
	draw_set_color(c_white);
    draw_set_alpha(1);
    surface_reset_target();
} else {
    // Again, surfaces can be a pain
    // Create a new one if there were issues
    surf = surface_create(room_width, room_height);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}

// Apparently I moved my fog layer with 'objDarkRoom', haha
//background_x[1] -= 0.5;