/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0299B67A
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 430D3423
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "oExplode"
/// @DnDSaveInfo : "objectid" "c31bd51d-2673-4f1d-955f-c789737610ff"
instance_create_layer(x + 0, y + 0, "Instances", oExplode);