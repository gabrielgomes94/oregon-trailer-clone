extends Node
class_name Diet

var game

var diet: int = NORMAL

enum {
	FED_UP = 1,
	NORMAL = 2,
	RESTRICTED = 3
}

func _ready() -> void:
	game = get_parent()


func set_diet(value: int):
	diet = value
	game.diet_changed.emit(diet)


func set_fed_up() -> void:
	set_diet(FED_UP)


func set_normal() -> void:
	set_diet(NORMAL)


func set_restricted() -> void:
	set_diet(RESTRICTED)