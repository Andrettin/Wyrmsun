import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
	id: tile_image_item
	
	width: tile_size
	height: tile_size
	
	property string tile_image_source: ""
	property real tile_red_change: 0.0
	property real tile_green_change: 0.0
	property real tile_blue_change: 0.0
	
	readonly property string fragment_shader_source: "file:///" + wyrmgus.shaders_path + "/fragment_shader.glsl"
	readonly property string vertex_shader_source: "file:///" + wyrmgus.shaders_path + "/vertex_shader.glsl"
	
	Image {
		id: tile_image
		source: tile_image_source
		visible: false
	}
	
	ShaderEffect {
		width: parent.width
		height: parent.height
		fragmentShader: fragment_shader_source
		vertexShader: vertex_shader_source
		
		property variant src: tile_image
		property real opacity_multiplier: 1.0
		property real red_change: tile_red_change
		property real green_change: tile_green_change
		property real blue_change: tile_blue_change
		property int frameDirection: 1
		property int frameCount: 1
		property size outputSize: Qt.size(width, height)
		property size textureSize: Qt.size(tile_image.width, tile_image.height)
		property size inputSize: Qt.size(tile_image.width, tile_image.height)
	}
}
