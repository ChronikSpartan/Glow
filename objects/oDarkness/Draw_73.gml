/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7FFF93D7
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Draw the surface or create a new one$(13_10)// Be sure to use views, even if it isn't necessary for your game$(13_10)// This trick bypasses an issue with resizing the game window$(13_10)// DX requires that surfaces be destroyed when resizing$(13_10)if (!surface_exists(surf)) {$(13_10)    surf = surface_create(room_width, room_height);$(13_10)} else {$(13_10)    if (view_current == 0) {$(13_10)        draw_surface(surf, 0, 0);$(13_10)    }$(13_10)}"
/// @description Execute Code
// Draw the surface or create a new one
// Be sure to use views, even if it isn't necessary for your game
// This trick bypasses an issue with resizing the game window
// DX requires that surfaces be destroyed when resizing
if (!surface_exists(surf)) {
    surf = surface_create(room_width, room_height);
} else {
    if (view_current == 0) {
        draw_surface(surf, 0, 0);
    }
}