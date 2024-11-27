extends CharacterBody2D
@onready var t_anim = $Speech/AnimationPlayer
@onready var t_1 = $Speech/t_1
@onready var t_2 = $Speech/t_2

func _ready():
	pass
	t_1.visible = false
	t_2.visible = false
func _on_detect_body_entered(body):
	
	pass # Replace with function body.
	if body.is_in_group('player'):
		t_anim.play("t_1")


func _on_detect_body_exited(body):
	pass # Replace with function body.
	if body.is_in_group('player'):
		t_anim.play("disable text")
