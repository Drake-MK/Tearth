extends CharacterBody2D
@onready var player =  $AnimationPlayer



const SPEED = 150.0
const JUMP_VELOCITY = -220.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


	
func _physics_process(delta):
	var anim = player
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta * 0.5

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		player.play("jump")
		velocity.y = JUMP_VELOCITY
	
#    HANDEL RUNNING
	var direction = Input.get_axis("left", "right")
	if direction:
		player.play("run")
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if direction > 0:
		$main.flip_h = false
	elif direction <0:
		$main.flip_h = true

	if not Input.is_anything_pressed():
		player.play("idle")
	if Input.is_action_just_pressed("shoot"):
		player.play(["l_atk", "r_atk"].pick_random())
		
		
	
	move_and_slide()
	

		
