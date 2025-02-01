extends Control
class_name UIStationScreen

@onready var option_box = $Panel/VBoxContainer2/VBoxContainer
@export var option_template: PackedScene
@export var options: Options
@export var actions: StationScreenActions


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var options = Options.station_screen_options_list()
	
	for i in options:
		var option = option_template.instantiate() as Option
		option.set_option_name(i, options[i]['name'])
		option.value = i
		option.selected.connect(on_option_selected)
		option_box.add_child(option)	


func on_option_selected(option: Option):
	if option.value == 1:
		actions.travel()

	pass
