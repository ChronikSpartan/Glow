/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 785670C2
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Clean up the surface memory manually$(13_10)if (surface_exists(surf)) $(13_10)    surface_free(surf);"
/// @description Execute Code
// Clean up the surface memory manually
if (surface_exists(surf)) 
    surface_free(surf);