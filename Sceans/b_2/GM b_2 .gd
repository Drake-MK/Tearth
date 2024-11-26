extends Node
@onready var striker = $"../striker"
@onready var canvas_modulate = $"../Bg/ParallaxBackground/CanvasModulate"
@onready var canvas_modulate_2 = $"../TileMap2/CanvasModulate2"


# Called when the node enters the scene tree for the first time.


var camera_limits = [ 0, -10000000, -10000000 , 170 ]
#                    left, top , left, bottom 
func _ready():
	canvas_modulate.visible = true
	canvas_modulate_2.visible = true
func _on_kill_zone_body_entered(body):
	pass # Replace with function body.
	if body.is_in_group("player"):
		get_tree().reload_current_scene()
