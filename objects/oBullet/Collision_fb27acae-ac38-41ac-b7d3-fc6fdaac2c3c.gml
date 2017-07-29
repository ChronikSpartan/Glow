/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3CA99A04
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 34AB5C03
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "oExplode"
/// @DnDSaveInfo : "objectid" "c31bd51d-2673-4f1d-955f-c789737610ff"
instance_create_layer(x + 0, y + 0, "Instances", oExplode);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D914E1A
/// @DnDApplyTo : other
/// @DnDArgument : "var" "setToBreak"
/// @DnDArgument : "value" ""false""
with(other) var l2D914E1A_0 = setToBreak == "false";
if(l2D914E1A_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0DFC5D91
	/// @DnDApplyTo : other
	/// @DnDParent : 2D914E1A
	/// @DnDArgument : "expr" ""true""
	/// @DnDArgument : "var" "setToBreak"
	with(other) {
	setToBreak = "true";
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 45FDF6D0
	/// @DnDApplyTo : other
	/// @DnDParent : 2D914E1A
	with(other) {
	alarm_set(0, 30);
	
	}
}