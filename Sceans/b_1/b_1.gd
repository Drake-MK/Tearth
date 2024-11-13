extends Node2D

@onready var kill_zone = $kill_zone

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_kill_zone_body_entered(body):
	pass # Replace with function body.
	if body.is_in_group("player"):
		get_tree().reload_current_scene()
