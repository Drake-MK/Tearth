extends Camera2D

@onready var camera_2d = $"."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	if Input.is_action_just_pressed("left") :
		camera_2d.position.x +=1
	if Input.is_action_just_pressed("right") :
		camera_2d.position.x -=1
	if Input.is_action_just_pressed("jump") :
		
		camera_2d.position.y -=1
