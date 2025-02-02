extends UIScreen
class_name UIDietScreen

@export var diet_selector: DietSelector

func on_option_selected(option: Option):	
	match option.value:
		1: diet_selector.set_diet(100)
		2: diet_selector.set_diet(50)
		3: diet_selector.set_diet(20)
		'ESC': actions.station_screen()
	actions.station_screen()


func get_options() -> Dictionary:
	return Options.diet_selector_screen_list()
