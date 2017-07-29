/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0906C6AE
/// @DnDApplyTo : other
/// @DnDArgument : "var" "setToBreak"
/// @DnDArgument : "value" ""false""
with(other) var l0906C6AE_0 = setToBreak == "false";
if(l0906C6AE_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B25E631
	/// @DnDApplyTo : other
	/// @DnDParent : 0906C6AE
	/// @DnDArgument : "expr" ""true""
	/// @DnDArgument : "var" "setToBreak"
	with(other) {
	setToBreak = "true";
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 31DF3500
	/// @DnDApplyTo : other
	/// @DnDParent : 0906C6AE
	with(other) {
	alarm_set(0, 30);
	
	}
}