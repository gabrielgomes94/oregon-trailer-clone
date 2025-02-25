extends UIScreen
class_name UIPaceScreen

@export var pace: Pace

func on_option_selected(option: Option):
	match option.value:
		1: pace.set_slow()
		2: pace.set_normal()
		3: pace.set_fast()
		'ESC': actions.station_screen()
	actions.station_screen()


func _input(event: InputEvent) -> void:
	if visible == false: return
	if event.is_action_released("1"):
		pace.set_slow()
		actions.station_screen()
	if event.is_action_released("2"):
		pace.set_normal()
		actions.station_screen()
	if event.is_action_released("3"):
		pace.set_fast()
		actions.station_screen()


func get_options() -> Dictionary:
	return Options.pace_selector_screen_list()
