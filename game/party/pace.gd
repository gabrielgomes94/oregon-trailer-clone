extends Node
class_name Pace

enum {
	SLOW = 1,
	NORMAL = 2,
	FAST = 3
}


var pace: int = 100

var game

func _ready() -> void:
	game = get_parent()

func set_pace(value: int) -> void:
	pace = value
	game.pace_changed.emit(pace)

func get_pace() -> int:
	return pace

func set_slow() -> void:
	set_pace(SLOW)

func set_normal() -> void:
	set_pace(NORMAL)

func set_fast() -> void:
	set_pace(FAST)