/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 02C98683
/// @DnDInput : 3
/// @DnDArgument : "value_1" "[]"
/// @DnDArgument : "value_2" "1"
/// @DnDArgument : "var" "partyMemberPosition"
/// @DnDArgument : "var_1" "party_members"
/// @DnDArgument : "var_2" "level"
global.partyMemberPosition = 0;
global.party_members = [];
global.level = 1;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7222383A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)window_set_size(1920,1080);$(13_10)draw_set_font(font_arial);"
/// @description Execute Code
window_set_size(1920,1080);
draw_set_font(font_arial);