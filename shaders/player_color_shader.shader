shader_type canvas_item;

uniform vec4 source_primary_player_color_1 : hint_color;
uniform vec4 source_primary_player_color_2 : hint_color;
uniform vec4 source_primary_player_color_3 : hint_color;
uniform vec4 source_primary_player_color_4 : hint_color;
uniform vec4 source_primary_player_color_5 : hint_color;
uniform vec4 source_primary_player_color_6 : hint_color;
uniform vec4 source_primary_player_color_7 : hint_color;
uniform vec4 source_primary_player_color_8 : hint_color;
uniform vec4 source_primary_player_color_9 : hint_color;

uniform vec4 target_primary_player_color_1 : hint_color;
uniform vec4 target_primary_player_color_2 : hint_color;
uniform vec4 target_primary_player_color_3 : hint_color;
uniform vec4 target_primary_player_color_4 : hint_color;
uniform vec4 target_primary_player_color_5 : hint_color;
uniform vec4 target_primary_player_color_6 : hint_color;
uniform vec4 target_primary_player_color_7 : hint_color;
uniform vec4 target_primary_player_color_8 : hint_color;
uniform vec4 target_primary_player_color_9 : hint_color;

uniform vec4 source_secondary_player_color_1 : hint_color;
uniform vec4 source_secondary_player_color_2 : hint_color;
uniform vec4 source_secondary_player_color_3 : hint_color;
uniform vec4 source_secondary_player_color_4 : hint_color;
uniform vec4 source_secondary_player_color_5 : hint_color;
uniform vec4 source_secondary_player_color_6 : hint_color;
uniform vec4 source_secondary_player_color_7 : hint_color;
uniform vec4 source_secondary_player_color_8 : hint_color;
uniform vec4 source_secondary_player_color_9 : hint_color;

uniform vec4 target_secondary_player_color_1 : hint_color;
uniform vec4 target_secondary_player_color_2 : hint_color;
uniform vec4 target_secondary_player_color_3 : hint_color;
uniform vec4 target_secondary_player_color_4 : hint_color;
uniform vec4 target_secondary_player_color_5 : hint_color;
uniform vec4 target_secondary_player_color_6 : hint_color;
uniform vec4 target_secondary_player_color_7 : hint_color;
uniform vec4 target_secondary_player_color_8 : hint_color;
uniform vec4 target_secondary_player_color_9 : hint_color;

uniform vec4 source_hair_color_1 : hint_color;
uniform vec4 source_hair_color_2 : hint_color;
uniform vec4 source_hair_color_3 : hint_color;
uniform vec4 source_hair_color_4 : hint_color;
uniform vec4 source_hair_color_5 : hint_color;
uniform vec4 source_hair_color_6 : hint_color;
uniform vec4 source_hair_color_7 : hint_color;
uniform vec4 source_hair_color_8 : hint_color;
uniform vec4 source_hair_color_9 : hint_color;
uniform vec4 source_hair_color_10 : hint_color;
uniform vec4 source_hair_color_11 : hint_color;
uniform vec4 source_hair_color_12 : hint_color;
uniform vec4 source_hair_color_13 : hint_color;

uniform vec4 target_hair_color_1 : hint_color;
uniform vec4 target_hair_color_2 : hint_color;
uniform vec4 target_hair_color_3 : hint_color;
uniform vec4 target_hair_color_4 : hint_color;
uniform vec4 target_hair_color_5 : hint_color;
uniform vec4 target_hair_color_6 : hint_color;
uniform vec4 target_hair_color_7 : hint_color;
uniform vec4 target_hair_color_8 : hint_color;
uniform vec4 target_hair_color_9 : hint_color;
uniform vec4 target_hair_color_10 : hint_color;
uniform vec4 target_hair_color_11 : hint_color;
uniform vec4 target_hair_color_12 : hint_color;
uniform vec4 target_hair_color_13 : hint_color;

vec3 get_modified_rgb(vec3 rgb)
{
	// if there are valid source primary player colors
	if (source_primary_player_color_1.rgb != vec3(0, 0, 0)) {
		if (rgb == source_primary_player_color_1.rgb) {
			return target_primary_player_color_1.rgb;
		} else if (rgb == source_primary_player_color_2.rgb) {
			return target_primary_player_color_2.rgb;
		} else if (rgb == source_primary_player_color_3.rgb) {
			return target_primary_player_color_3.rgb;
		} else if (rgb == source_primary_player_color_4.rgb) {
			return target_primary_player_color_4.rgb;
		} else if (rgb == source_primary_player_color_5.rgb) {
			return target_primary_player_color_5.rgb;
		} else if (rgb == source_primary_player_color_6.rgb) {
			return target_primary_player_color_6.rgb;
		} else if (rgb == source_primary_player_color_7.rgb) {
			return target_primary_player_color_7.rgb;
		} else if (rgb == source_primary_player_color_8.rgb) {
			return target_primary_player_color_8.rgb;
		} else if (rgb == source_primary_player_color_9.rgb) {
			return target_primary_player_color_9.rgb;
		}
	}
	
	// if there are valid source secondary player colors
	if (source_secondary_player_color_1.rgb != vec3(0, 0, 0)) {
		if (rgb == source_secondary_player_color_1.rgb) {
			return target_secondary_player_color_1.rgb;
		} else if (rgb == source_secondary_player_color_2.rgb) {
			return target_secondary_player_color_2.rgb;
		} else if (rgb == source_secondary_player_color_3.rgb) {
			return target_secondary_player_color_3.rgb;
		} else if (rgb == source_secondary_player_color_4.rgb) {
			return target_secondary_player_color_4.rgb;
		} else if (rgb == source_secondary_player_color_5.rgb) {
			return target_secondary_player_color_5.rgb;
		} else if (rgb == source_secondary_player_color_6.rgb) {
			return target_secondary_player_color_6.rgb;
		} else if (rgb == source_secondary_player_color_7.rgb) {
			return target_secondary_player_color_7.rgb;
		} else if (rgb == source_secondary_player_color_8.rgb) {
			return target_secondary_player_color_8.rgb;
		} else if (rgb == source_secondary_player_color_9.rgb) {
			return target_secondary_player_color_9.rgb;
		}
	}
	
	// if there are valid hair source colors
	if (source_hair_color_1.rgb != vec3(0, 0, 0)) {
		if (rgb == source_hair_color_1.rgb) {
			return target_hair_color_1.rgb;
		} else if (rgb == source_hair_color_2.rgb) {
			return target_hair_color_2.rgb;
		} else if (rgb == source_hair_color_3.rgb) {
			return target_hair_color_3.rgb;
		} else if (rgb == source_hair_color_4.rgb) {
			return target_hair_color_4.rgb;
		} else if (rgb == source_hair_color_5.rgb) {
			return target_hair_color_5.rgb;
		} else if (rgb == source_hair_color_6.rgb) {
			return target_hair_color_6.rgb;
		} else if (rgb == source_hair_color_7.rgb) {
			return target_hair_color_7.rgb;
		} else if (rgb == source_hair_color_8.rgb) {
			return target_hair_color_8.rgb;
		} else if (rgb == source_hair_color_9.rgb) {
			return target_hair_color_9.rgb;
		} else if (rgb == source_hair_color_10.rgb) {
			return target_hair_color_10.rgb;
		} else if (rgb == source_hair_color_11.rgb) {
			return target_hair_color_11.rgb;
		} else if (rgb == source_hair_color_12.rgb) {
			return target_hair_color_12.rgb;
		} else if (rgb == source_hair_color_13.rgb) {
			return target_hair_color_13.rgb;
		}
	}
	
	return rgb;
}

void fragment()
{
	vec4 color = texture(TEXTURE, UV);
	color.rgb = get_modified_rgb(color.rgb);
	
	COLOR = color;
}