extends UIScreen
class_name UIStationScreen


func on_option_selected(option: Option):
	match option.value:
		1: actions.travel()
		2: actions.supplies()
		3: actions.map()
		4: actions.pace()


func _input(event: InputEvent) -> void:
	if visible == false: return

	if event.is_action_released(InputMapper.TRAVEL_SCREEN):
		actions.travel()
	if event.is_action_released(InputMapper.SUPPLIES_SCREEN):
		actions.supplies()
	if event.is_action_released(InputMapper.MAP_SCREEN):
		actions.map()


func get_options():
	return Options.station_screen_options_list()
