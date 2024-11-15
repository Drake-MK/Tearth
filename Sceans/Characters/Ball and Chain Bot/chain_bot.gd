extends CharacterBody2D
@onready var anim = $AnimatedSprite2D

const SPEED = 150.0
const JUMP_VELOCITY = -220.0


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	pass
	if not is_on_floor():
		velocity.y += gravity * delta * 0.5

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		anim.play("jump")
		velocity.y = JUMP_VELOCITY
	
func _ready():
	anim.play("idle")


func _on_body_area_entered(area):
	print(area.get_groups())
	pass # Replace with function body.
	if area.is_in_group("sword"):
		anim.play("hit")
	
