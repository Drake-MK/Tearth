extends Node
@onready var camera_2d = $Camera2D
@onready var p_a = $"../Game Objects/P_A"


@onready var striker = $striker

# Called when the node enters the scene tree for the first time.
var camera_limits = [ 0, -10000000, -10000000 ,-10000000]
var game_scene = preload("res://Sceans/b_2/b_2.tscn")

var p_a_ = false # to increase the effecncicy introduced this variable to same the time spend on checking 
func _ready():
	pass
	p_a_ = false
func _process(delta):
	if p_a_ == true:
		if p_a.pas == true:
			pass
			get_tree().change_scene_to_packed(game_scene)
			p_a_ = false
			p_a.pas = false

func _on_p_activate_area_entered(area):
	pass # Replace with function body.
	if area.is_in_group("sword"):
		p_a.activate()
		p_a_ = true
		
