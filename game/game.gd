extends Node
class_name Game

signal distance_left_changed
signal food_left_changed
signal game_paused
signal game_resumed

var distance_left = 1000
var food_left = 1000

var current_route
var total_distance
var time_elapsed

@onready var pace: PaceSelector = $PaceSelector
@onready var diet: DietSelector = $DietSelector
@onready var timer = $Timer

func _ready() -> void:
	distance_left_changed.emit(1000)
	timer.timeout.connect(on_timer_timeout)
	game_paused.connect(on_game_paused)
	game_resumed.connect(on_game_resumed)


func on_timer_timeout():
	distance_left = distance_left - pace.get_pace()
	distance_left_changed.emit(distance_left)
	food_left = food_left - diet.diet
	food_left_changed.emit(food_left)

func on_game_paused():
	timer.paused = true


func on_game_resumed():
	timer.paused = false
