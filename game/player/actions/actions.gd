extends Node
class_name Actions

var main: Main

func _ready() -> void:
	main = get_parent().get_parent()


func travel():
	main.call_deferred("switch_to_movement_screen")


func station_screen():
	main.call_deferred("switch_to_station_screen")


func supplies():
	main.call_deferred("switch_to_supplies_screen")


func map():
	main.call_deferred("switch_to_map_screen")


func pace():
	main.call_deferred("switch_to_pace_screen")


func diet():
	main.call_deferred("switch_to_diet_screen")


func dialog():
	main.call_deferred("switch_to_dialog_screen")
