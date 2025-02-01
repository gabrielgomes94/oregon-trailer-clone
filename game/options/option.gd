extends Control

class_name Option
var option_name: String
var value: int

@onready var label: Label = $Label

func _ready():
	label.text = option_name
	
