extends Control
class_name UISuppliesScreen

@onready var option_box = $Panel/VBoxContainer/ActionsBoxContainer
@export var option_template: PackedScene
@export var options: Options
@export var actions: StationScreenActions


func _ready() -> void:
	var options = Options.supplies_screen_options_list()

	for i in options:
		var option = option_template.instantiate() as Option
		option.selected.connect(on_option_selected)
		option.set_data(i, options[i]['name'])
		option_box.add_child(option)


func on_option_selected(option: Option):
	if str(option.value) == '1':
		actions.travel()
	elif str(option.value) == 'ESC':
		actions.station_screen()


func _input(event: InputEvent) -> void:
	if visible == false: return

	if event.is_action_released(InputMapper.TRAVEL_SCREEN):
		actions.travel()
	if event.is_action_released(InputMapper.STATION_SCREEN):
		actions.station_screen()
