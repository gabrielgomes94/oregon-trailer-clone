extends Node
class_name Game

signal distance_left_changed
signal game_paused
signal game_resumed

var distance_left = 1000
var pace = 100

@onready var timer = $Timer

func _ready() -> void:
	distance_left_changed.emit(1000)
	timer.timeout.connect(on_timer_timeout)
	game_paused.connect(on_game_paused)
	game_resumed.connect(on_game_resumed)


func on_timer_timeout():
	distance_left = distance_left - pace
	distance_left_changed.emit(distance_left)	


func on_game_paused():
	timer.paused = true


func on_game_resumed():
	timer.paused = false
