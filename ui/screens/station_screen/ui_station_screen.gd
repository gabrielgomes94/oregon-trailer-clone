extends Control
class_name UIStationScreen

@onready var option_box = $Panel/VBoxContainer
@export var option_template: PackedScene
@export var options: Options


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var options = Options.basic_road_screen_options_list()
	
	for i in options:
		var option = option_template.instantiate()
		option.option_name = options[i]
		option.value = 1		
		option_box.add_child(option)	
