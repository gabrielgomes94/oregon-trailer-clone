extends Control
class_name UIMovementScreen

#var distance_left: int
#var 

@export var game: Game

@onready var distance_left_label = $Panel/VBoxContainer/InformationPanel/VBoxContainer/GridContainer/DistanceLeftLabelValue
@onready var food_left_label = $Panel/VBoxContainer/InformationPanel/VBoxContainer/GridContainer/FoodLeftLabelValue
@onready var diet_label = $Panel/VBoxContainer/InformationPanel/VBoxContainer/GridContainer/DietLabelValue
@onready var pace_label = $Panel/VBoxContainer/InformationPanel/VBoxContainer/GridContainer/PaceLabelValue


func _ready() -> void:
	game.distance_left_changed.connect(on_distance_left_changed)
	game.food_left_changed.connect(on_food_left_changed)
	game.diet_changed.connect(on_diet_label_changed)
	game.pace_changed.connect(on_pace_label_changed)


func on_distance_left_changed(distance_left: int) -> void: 
	if distance_left < 0: return
	distance_left_label.text = str(distance_left)


func on_food_left_changed(food_left: int) -> void:
	if food_left < 0: return
	food_left_label.text = str(food_left)


func on_pace_label_changed(pace) -> void:
	pace_label.text = str(pace)


func on_diet_label_changed(diet) -> void:
	print('oioi')
	diet_label.text = str(diet)
