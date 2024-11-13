extends Node
@onready var camera_2d = $Camera2D

@onready var striker = $striker

# Called when the node enters the scene tree for the first time.
var camera_limits = [ 0, -10000000, -10000000 ,-10000000]
func _ready():
	pass
	
