/// draw_sprite_skew_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, image_xskew, image_yskew, topLeftModifier, topRightModifier, bottomLeftModifier, bottomRightModifier);
switch(playerState)
{
	case "STANDING": draw_sprite_skew_ext(sPlayer, 0, x, y, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0);
	case "MOVE_RIGHT": draw_sprite_skew_ext(sPlayer, 0, x, y, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0);
	case "MOVE_LEFT": draw_sprite_skew_ext(sPlayer, 0, x, y, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0);
	case "WALL_RIGHT": draw_sprite_skew_ext(sPlayer, 0, x, y, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0);
	case "WALL_LEFT": draw_sprite_skew_ext(sPlayer, 0, x, y, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0);
	case "JUMP": draw_sprite_skew_ext(sPlayer, 0, x, y, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0);
}
