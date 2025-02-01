extends Button
class_name Option

@onready var label: Label = $Label

var option_name: String
var value: int

signal selected

func _ready():
	label.text = option_name
	pressed.connect(on_button_pressed)
	

func on_button_pressed():
	selected.emit(self)


func set_option_name(action_number: int, name: String):
	option_name = "{action}: {name}".format({
		"action": action_number,
		"name": name
	})
