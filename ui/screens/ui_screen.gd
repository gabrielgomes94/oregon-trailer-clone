extends Control
class_name UIScreen

@export var option_template: PackedScene
@export var options: Options
@export var actions: Node
@onready var option_box = $Panel/VBoxContainer/ActionsBoxContainer

func _ready() -> void:
	var options = get_options()
	for i in options:
		var option = option_template.instantiate() as Option
		option.selected.connect(on_option_selected)
		option.set_data(i, options[i]['name'])
		option_box.add_child(option)


func on_option_selected(option: Option):
	pass

	
func get_options():
	pass
