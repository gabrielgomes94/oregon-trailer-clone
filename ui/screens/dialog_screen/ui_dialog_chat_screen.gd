extends UIScreen
class_name UIDialogChatScreen


func on_option_selected(option: Option):
	match option.value:
		'ESC': actions.station_screen()
	actions.station_screen()


func _input(event: InputEvent) -> void:
	if visible == false: return
	if event.is_action_released("ESC"):		
		actions.station_screen()	

func get_options() -> Dictionary:
	return Options.dialog_selector_screen_list()
