extends Node

@onready var movement_screen = $MovementScreen
@onready var station_screen = $StationScreen
@onready var game = $Game

func _ready() -> void:
	movement_screen.distance_left = 1000


func _input(event: InputEvent) -> void:
	if event.is_action(InputMapper.SWITCH_SCREEN) and event.is_released():
		if movement_screen.is_visible():
			switch_to_station_screen()
		elif station_screen.is_visible():
			switch_to_movement_screen()


func switch_to_movement_screen():
	station_screen.visible = false
	movement_screen.visible = true
	game.game_resumed.emit()


func switch_to_station_screen():
	station_screen.visible = true
	movement_screen.visible = false
	game.game_paused.emit()
