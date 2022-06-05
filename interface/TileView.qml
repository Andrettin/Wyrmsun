import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: tile
	
	implicitWidth: tile_size
	implicitHeight: tile_size
	
	property real tile_red_change: red_change / 255.0
	property real tile_green_change: green_change / 255.0
	property real tile_blue_change: blue_change / 255.0
	
	readonly property string fragment_shader_source: "
		varying highp vec2 qt_TexCoord0;
		uniform lowp float qt_Opacity;
		uniform sampler2D src;
		uniform highp float opacity_multiplier;
		uniform highp float red_change;
		uniform highp float green_change;
		uniform highp float blue_change;

		void main() {
			highp vec4 tmp_frag_color = texture2D(src, qt_TexCoord0);

			tmp_frag_color.r = min(max(tmp_frag_color.r + red_change, 0.0), 1.0);
			tmp_frag_color.g = min(max(tmp_frag_color.g + green_change, 0.0), 1.0);
			tmp_frag_color.b = min(max(tmp_frag_color.b + blue_change, 0.0), 1.0);

			tmp_frag_color.a *= opacity_multiplier;

			gl_FragColor = tmp_frag_color * tmp_frag_color.a;
		};
	"
	
	Image {
		id: base_terrain_image
		source: "image://tile/" + image_source
		
		ShaderEffect {
			width: parent.width
			height: parent.height
			fragmentShader: fragment_shader_source
			
			property variant src: base_terrain_image
			property real opacity_multiplier: 1.0
			property real red_change: tile_red_change
			property real green_change: tile_green_change
			property real blue_change: tile_blue_change
		}
	}
	
	Repeater {
		model: transition_image_sources
		
		Image {
			id: base_terrain_transition_image
			source: "image://tile/" + modelData
			
			ShaderEffect {
				width: parent.width
				height: parent.height
				fragmentShader: fragment_shader_source
				
				property variant src: base_terrain_transition_image
				property real opacity_multiplier: 1.0
				property real red_change: transition_red_changes[index] / 255.0
				property real green_change: transition_green_changes[index] / 255.0
				property real blue_change: transition_blue_changes[index] / 255.0
			}
		}
	}
	
	Image {
		id: overlay_terrain_image
		source: overlay_image_source.length > 0 && overlay_transition_image_sources.length == 0 ? "image://tile/" + overlay_image_source : "image://empty/"
		
		ShaderEffect {
			width: parent.width
			height: parent.height
			fragmentShader: fragment_shader_source
			
			property variant src: overlay_terrain_image
			property real opacity_multiplier: 1.0
			property real red_change: tile_red_change
			property real green_change: tile_green_change
			property real blue_change: tile_blue_change
		}
	}
	
	Repeater {
		model: overlay_transition_image_sources
		
		Image {
			id: overlay_terrain_transition_image
			source: "image://tile/" + modelData
			
			ShaderEffect {
				width: parent.width
				height: parent.height
				fragmentShader: fragment_shader_source
				
				property variant src: overlay_terrain_transition_image
				property real opacity_multiplier: 1.0
				property real red_change: tile_red_change
				property real green_change: tile_green_change
				property real blue_change: tile_blue_change
			}
		}
	}
	
	Repeater {
		model: overlay_transition_elevation_image_sources
		
		Image {
			id: overlay_terrain_transition_elevation_image
			source: "image://tile/" + modelData
			
			ShaderEffect {
				width: parent.width
				height: parent.height
				fragmentShader: fragment_shader_source
				
				property variant src: overlay_terrain_transition_elevation_image
				property real opacity_multiplier: 1.0
				property real red_change: tile_red_change
				property real green_change: tile_green_change
				property real blue_change: tile_blue_change
			}
		}
	}
}
