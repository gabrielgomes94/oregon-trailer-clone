extends UIScreen
class_name UIPaceScreen

@export var pace_selector: PaceSelector

func on_option_selected(option: Option):
	match option.value:
		1: pace_selector.set_pace(100)
		2: pace_selector.set_pace(200)
		3: pace_selector.set_pace(300)
		'ESC': actions.station_screen()
	actions.station_screen()


func get_options() -> Dictionary:
	return Options.pace_selector_screen_list()
