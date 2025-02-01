extends Node
class_name StationScreenActions

var main: Main

func _ready() -> void:
	main = get_parent().get_parent()


func travel():
	main.switch_to_movement_screen()


func station_screen():
	main.switch_to_station_screen()


func supplies():
	main.switch_to_supplies_screen()


func map():
	main.switch_to_map_screen()


func pace():
	main.switch_to_pace_screen()
