extends UIScreen
class_name UIDietScreen

@export var diet: Diet

func on_option_selected(option: Option):
	match option.value:
		1: diet.set_fed_up()
		2: diet.set_normal()
		3: diet.set_restricted()
		'ESC': actions.station_screen()
	actions.station_screen()


func _input(event: InputEvent) -> void:
	if visible == false: return
	if event.is_action_released("1"):
		diet.set_fed_up()
		actions.station_screen()
	if event.is_action_released("2"):
		diet.set_normal()
		actions.station_screen()
	if event.is_action_released("3"):
		diet.set_restricted()
		actions.station_screen()


func get_options() -> Dictionary:
	return Options.diet_selector_screen_list()
