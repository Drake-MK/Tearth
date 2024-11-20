extends CharacterBody2D
@onready var t_anim = $Speech/AnimationPlayer

func _ready():
	pass
	
func _on_detect_body_entered(body):
	print(body)
	pass # Replace with function body.
	if body.is_in_group('player'):
		
		t_anim.play("t_1")
