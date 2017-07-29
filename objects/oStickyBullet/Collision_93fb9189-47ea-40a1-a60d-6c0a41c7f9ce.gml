/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 48E62209
speed = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DE7186D
/// @DnDApplyTo : other
/// @DnDArgument : "var" "setToBreak"
/// @DnDArgument : "value" ""false""
with(other) var l0DE7186D_0 = setToBreak == "false";
if(l0DE7186D_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73A06A7A
	/// @DnDApplyTo : other
	/// @DnDParent : 0DE7186D
	/// @DnDArgument : "expr" ""true""
	/// @DnDArgument : "var" "setToBreak"
	with(other) {
	setToBreak = "true";
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 18D9E6E3
	/// @DnDApplyTo : other
	/// @DnDParent : 0DE7186D
	/// @DnDArgument : "steps" "240"
	with(other) {
	alarm_set(0, 240);
	
	}
}