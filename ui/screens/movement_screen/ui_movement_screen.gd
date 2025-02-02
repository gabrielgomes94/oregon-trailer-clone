extends Control
class_name UIMovementScreen

#var distance_left: int
#var 

@export var game: Game

@onready var distance_left_label = $Panel/VBoxContainer/InformationPanel/VBoxContainer/GridContainer/DistanceLeftLabelValue
@onready var food_left_label = $Panel/VBoxContainer/InformationPanel/VBoxContainer/GridContainer/FoodLeftLabelValue

func _ready() -> void:
	game.distance_left_changed.connect(on_distance_left_changed)
	game.food_left_changed.connect(on_food_left_changed)


func on_distance_left_changed(distance_left: int) -> void: 
	if distance_left < 0: return
	distance_left_label.text = str(distance_left)


func on_food_left_changed(food_left: int) -> void:
	if food_left < 0: return
	food_left_label.text = str(food_left)
