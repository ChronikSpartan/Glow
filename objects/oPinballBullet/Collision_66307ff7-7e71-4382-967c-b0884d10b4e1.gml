/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6BF5BC2E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)move_bounce_solid(true);"
/// @description Execute Code
move_bounce_solid(true);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3BC7C4B2
/// @DnDArgument : "var" "colour"
/// @DnDArgument : "max" "6"
colour = (random_range(0, 6));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E4C75B4
/// @DnDApplyTo : other
/// @DnDArgument : "var" "setToBreak"
/// @DnDArgument : "value" ""false""
with(other) var l0E4C75B4_0 = setToBreak == "false";
if(l0E4C75B4_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6679E64B
	/// @DnDApplyTo : other
	/// @DnDParent : 0E4C75B4
	/// @DnDArgument : "expr" ""true""
	/// @DnDArgument : "var" "setToBreak"
	with(other) {
	setToBreak = "true";
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3ED0B71B
	/// @DnDApplyTo : other
	/// @DnDParent : 0E4C75B4
	with(other) {
	alarm_set(0, 30);
	
	}
}