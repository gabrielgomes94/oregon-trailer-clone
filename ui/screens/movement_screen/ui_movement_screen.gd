extends Control
class_name UIMovementScreen

var distance_left: int

@export var game: Game

@onready var distance_left_label = $Panel/VBoxContainer/InformationPanel/VBoxContainer/GridContainer/DistanceLeftLabelValue

func _ready() -> void:
	game.distance_left_changed.connect(on_distance_left_changed)	


func on_distance_left_changed(distance_left: int) -> void: 
	if distance_left <= 0: return
	
	distance_left_label.text = str(distance_left)	
