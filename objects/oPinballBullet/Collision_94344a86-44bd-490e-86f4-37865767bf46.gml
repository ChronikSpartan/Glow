/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 33E69C66
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)move_bounce_solid(true);"
/// @description Execute Code
move_bounce_solid(true);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 58D42A06
/// @DnDArgument : "var" "colour"
/// @DnDArgument : "max" "6"
colour = (random_range(0, 6));

/// @DnDAction : YoYo Games.Instances.Change_Instance
/// @DnDVersion : 1
/// @DnDHash : 4E2B1F5A
/// @DnDApplyTo : other
/// @DnDArgument : "objind" "oColliderGlow"
/// @DnDSaveInfo : "objind" "b81784c6-1033-4f74-af60-aa5ffed44a4f"
with(other) instance_change(oColliderGlow, true);