/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 11B42BC8
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1943E7DC
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "oBombExplode"
/// @DnDSaveInfo : "objectid" "0724449e-39ef-44b4-bb7d-58015beadac8"
instance_create_layer(x + 0, y + 0, "Instances", oBombExplode);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5C2947DB
/// @DnDArgument : "expr" "random_range(10,20)"
/// @DnDArgument : "var" "numberOfDots"
numberOfDots = random_range(10,20);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 3F68A477
/// @DnDArgument : "times" "numberOfDots"
repeat(numberOfDots)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5C79AD44
	/// @DnDParent : 3F68A477
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "oBombDot"
	/// @DnDSaveInfo : "objectid" "31da8b41-bc71-4d77-95a5-d9397793351a"
	instance_create_layer(x + 0, y + 0, "Instances", oBombDot);
}