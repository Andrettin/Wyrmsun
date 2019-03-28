extends RichTextLabel

var default_shadow_margin_right

func _ready():
	var text_shadow_node = self.find_node("text_shadow")
	text_shadow_node.rect_clip_content = self.rect_clip_content
	
	if (self.has_font("normal_font")):
		text_shadow_node.add_font_override("normal_font", self.get_font("normal_font"))
		
	if (self.has_font("italics_font")):
		text_shadow_node.add_font_override("italics_font", self.get_font("italics_font"))
	
	self.default_shadow_margin_right = text_shadow_node.margin_right
	update_for_scroll_bar()
	
	self.get_v_scroll().connect("visibility_changed", self, "update_for_scroll_bar")
	self.get_v_scroll().connect("value_changed", self, "update_for_scroll_value")

func _set(property, value):
	if (property == "bbcode_text"):
		var text_shadow = value
		text_shadow = text_shadow.replace("[color=#f4e020]", "")
		text_shadow = text_shadow.replace("[/color]", "")
		self.find_node("text_shadow").bbcode_text = text_shadow
		
		#add color to links
		if (value.find("[url=") != -1):
			value = value.replace("[url=", "[color=#78b5d5][url=")
			value = value.replace("[/url]", "[/url][/color]")
			
		bbcode_text = value
		update_for_scroll_bar()
		return true
	elif (property == "text"):
		self.find_node("text_shadow").text = value
		update_for_scroll_bar()

func update_for_scroll_bar():
	if (self.scroll_active == false):
		return
		
	if (self.default_shadow_margin_right == null):
		return
		
	var text_shadow_node = self.find_node("text_shadow")
	text_shadow_node.margin_right = self.default_shadow_margin_right
	if (self.get_v_scroll().visible):
		#remove the scroll bar's width for the text shadow node, as that is automatically done for the main text node, to keep both sizes the same
		text_shadow_node.margin_right -= 12

func update_for_scroll_value(scroll_value):
	var text_shadow_node = self.find_node("text_shadow")
	text_shadow_node.get_v_scroll().value = scroll_value
