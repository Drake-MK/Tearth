extends CharacterBody2D

@onready var anim = $AnimatedSprite2D
@onready var chain_bot = $"."
@onready var player = null  # Reference to the detected player
var follow_speed = 100.0  # Speed of the follower
const SPEED = 150.0
const JUMP_VELOCITY = -220.0

var hp
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	hp = 10
	anim.play("idle")

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta * 0.5

func _process(delta):
	if hp == 0:
		death()
	
	velocity.x += 1
		
func _on_body_area_entered(area):
	if area.is_in_group("sword"):
		hp -= 1
		anim.play("hit")
		# Set up a timer to transition back to idle after the hit animation ends
		$Timer.start()


	# Check if the player is not dead, then transition back to idle
	
func death():
	anim.play("death")
	if anim.frame == 4:  # Adjust the frame number as per your animation setup
		delete()

func delete():
	chain_bot.queue_free()


func _on_timer_timeout():
	pass # Replace with function body.
	if hp > 0:
		anim.play("idle")





func _on_detect_body_entered(body):
	if body.is_in_group("player"):  # Ensure it's the player
		print("Player detected:", body)
		player = body  # Store reference to the player

func _on_detect_body_exited(body):
	if body == player:
		print("Player exited detection area.")
		player = null  # Stop following when the player leaves
