extends Node

@onready var movement_screen = $MovementScreen
@onready var station_screen = $StationScreen


func _input(event: InputEvent) -> void:
	if event.is_action(InputMapper.SWITCH_SCREEN) and event.is_released():
		if movement_screen.is_visible():
			switch_to_station_screen()
		elif station_screen.is_visible():
			switch_to_movement_screen()


func switch_to_movement_screen():
	station_screen.visible = false
	movement_screen.visible = true


func switch_to_station_screen():
	station_screen.visible = true
	movement_screen.visible = false
