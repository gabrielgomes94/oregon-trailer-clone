extends Node
class_name Main

@onready var movement_screen: UIMovementScreen = $Screens/MovementScreen
@onready var station_screen: UIStationScreen = $Screens/StationScreen
@onready var supplies_screen: UISuppliesScreen = $Screens/SuppliesScreen
@onready var map_screen: UIMapScreen = $Screens/MapScreen
@onready var pace_screen: UIPaceScreen = $Screens/PaceScreen

var screens: Array

@onready var game = $Game

func _ready() -> void:
	movement_screen.distance_left = 1000
	screens = [movement_screen, station_screen, supplies_screen, map_screen, pace_screen];


func _input(event: InputEvent) -> void:
	if event.is_action(InputMapper.SWITCH_SCREEN) and event.is_released():
		if movement_screen.is_visible():
			switch_to_station_screen()
		elif station_screen.is_visible():
			switch_to_movement_screen()


func switch_to_movement_screen():
	switch_screen(movement_screen)
	game.game_resumed.emit()


func switch_to_station_screen():
	switch_screen(station_screen)
	game.game_paused.emit()


func switch_to_supplies_screen():
	switch_screen(supplies_screen)


func switch_to_map_screen():
	switch_screen(map_screen)


func switch_to_pace_screen():
	switch_screen(pace_screen)



func switch_screen(target_screen):
	for screen in screens:
		screen.visible = screen == target_screen
