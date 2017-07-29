/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2CA4F275
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Create a surface the size of the current room$(13_10)// You could also create a surface the size of the current view, but I won't get into that$(13_10)surf = surface_create(room_width, room_height);$(13_10)$(13_10)// The following two lines clear the surface$(13_10)// There is no guarantee that the surface doesn't contain garbage info post-creation$(13_10)surface_set_target(surf);$(13_10)draw_clear_alpha(c_black, 0);$(13_10)$(13_10)// Reset to application surface$(13_10)surface_reset_target();"
/// @description Execute Code
// Create a surface the size of the current room
// You could also create a surface the size of the current view, but I won't get into that
surf = surface_create(room_width, room_height);

// The following two lines clear the surface
// There is no guarantee that the surface doesn't contain garbage info post-creation
surface_set_target(surf);
draw_clear_alpha(c_black, 0);

// Reset to application surface
surface_reset_target();