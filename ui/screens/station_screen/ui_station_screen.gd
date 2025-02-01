extends Control
class_name UIStationScreen

@onready var option_box = $Panel/VBoxContainer2/VBoxContainer
@export var option_template: PackedScene
@export var options: Options
@export var actions: StationScreenActions


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
	elif option.value == 2:
		actions.supplies()
	elif option.value == 3:
		actions.map()


func _input(event: InputEvent) -> void:
	if visible == false: return

	if event.is_action_released(InputMapper.TRAVEL_SCREEN):
		actions.travel()
	if event.is_action_released(InputMapper.SUPPLIES_SCREEN):
		actions.supplies()
	if event.is_action_released(InputMapper.MAP_SCREEN):
		actions.map()
