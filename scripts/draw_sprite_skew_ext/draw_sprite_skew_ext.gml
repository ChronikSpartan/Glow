/// draw_sprite_skew_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, image_xskew, image_yskew, topLeftModifier, topRightModifier, bottomLeftModifier, bottomRightModifier);

var sprite      = argument0; 
var index       = argument1;
var xx          = argument2;
var yy          = argument3; 
var xscale      = argument4; 
var yscale      = argument5;
var cosAngle    = cos(degtorad(argument6)); 
var sinAngle    = sin(degtorad(argument6)); 
var tint        = argument7;
var alpha       = argument8;
var hskew       = argument9;
var vskew       = argument10;
var topLeft     = argument11;
var topRight    = argument12;
var bottomLeft  = argument13;
var bottomRight = argument14;

// Calculate common operations
var sprTex    = sprite_get_texture(sprite, index); 
var sprWidth  = sprite_get_width(sprite); 
var sprHeight = sprite_get_height(sprite); 
var sprXOrig  = sprite_get_xoffset(sprite); 
var sprYOrig  = sprite_get_yoffset(sprite);

var tempX, tempY, tempDir, tempDist;

// Begin drawing primitive
draw_primitive_begin_texture(pr_trianglestrip, sprTex);

// Top-left corner
tempX = (-sprXOrig + (sprYOrig / sprHeight) * (hskew * topLeft)) * xscale;
tempY = (-sprYOrig + (sprXOrig / sprWidth) * (-vskew * topLeft)) * yscale;
draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 0, 0, tint, alpha);

// Top-right corner
tempX = (sprWidth + (sprYOrig / sprHeight) * (hskew  * topRight) - sprXOrig) * xscale;
tempY = (-sprYOrig + (1 - sprXOrig / sprWidth) * (vskew  * topRight)) * yscale;
draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 1, 0, tint, alpha);

// Bottom-left corner
tempX = (-sprXOrig + (1 - sprYOrig / sprHeight) * (-hskew * bottomLeft)) * xscale;
tempY = (sprHeight - sprYOrig + (sprXOrig / sprWidth) * (-vskew * bottomLeft)) * yscale;
draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 0, 1, tint, alpha);

// Bottom-right corner
tempX = (sprWidth - sprXOrig + (1 - sprYOrig / sprHeight) * (-hskew * bottomRight)) * xscale;
tempY = (sprHeight - sprYOrig + (1 - sprXOrig / sprWidth) * (vskew * bottomRight)) * yscale;
draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 1, 1, tint, alpha);

// Finish drawing primitive
draw_primitive_end();
