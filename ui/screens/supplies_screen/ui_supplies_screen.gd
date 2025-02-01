extends UIScreen
class_name UISuppliesScreen


func on_option_selected(option: Option):
	match option.value:
		1: actions.travel()
		'ESC': actions.station_screen()


func _input(event: InputEvent) -> void:
	if visible == false: return
	if event.is_action_released(InputMapper.TRAVEL_SCREEN):
		actions.travel()
	if event.is_action_released(InputMapper.STATION_SCREEN):
		actions.station_screen()


func get_options():
	return Options.supplies_screen_options_list()
