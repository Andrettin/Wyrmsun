shader_type canvas_item;

uniform vec4 source_player_color_1 : hint_color;
uniform vec4 source_player_color_2 : hint_color;
uniform vec4 source_player_color_3 : hint_color;
uniform vec4 source_player_color_4 : hint_color;
uniform vec4 source_player_color_5 : hint_color;
uniform vec4 source_player_color_6 : hint_color;
uniform vec4 source_player_color_7 : hint_color;
uniform vec4 source_player_color_8 : hint_color;
uniform vec4 source_player_color_9 : hint_color;

uniform vec4 target_player_color_1 : hint_color;
uniform vec4 target_player_color_2 : hint_color;
uniform vec4 target_player_color_3 : hint_color;
uniform vec4 target_player_color_4 : hint_color;
uniform vec4 target_player_color_5 : hint_color;
uniform vec4 target_player_color_6 : hint_color;
uniform vec4 target_player_color_7 : hint_color;
uniform vec4 target_player_color_8 : hint_color;
uniform vec4 target_player_color_9 : hint_color;

void fragment()
{
	vec4 color = texture(TEXTURE, UV);
	
	if (color.rgb == source_player_color_1.rgb) {
		color.rgb = target_player_color_1.rgb;
	} else if (color.rgb == source_player_color_2.rgb) {
		color.rgb = target_player_color_2.rgb;
	} else if (color.rgb == source_player_color_3.rgb) {
		color.rgb = target_player_color_3.rgb;
	} else if (color.rgb == source_player_color_4.rgb) {
		color.rgb = target_player_color_4.rgb;
	} else if (color.rgb == source_player_color_5.rgb) {
		color.rgb = target_player_color_5.rgb;
	} else if (color.rgb == source_player_color_6.rgb) {
		color.rgb = target_player_color_6.rgb;
	} else if (color.rgb == source_player_color_7.rgb) {
		color.rgb = target_player_color_7.rgb;
	} else if (color.rgb == source_player_color_8.rgb) {
		color.rgb = target_player_color_8.rgb;
	} else if (color.rgb == source_player_color_9.rgb) {
		color.rgb = target_player_color_9.rgb;
	}
	
    COLOR = vec4(color.rgb, 1);
}