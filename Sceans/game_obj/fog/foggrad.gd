extends ColorRect
var time:float = 0.0 
@export var gradient :GradientTexture1D
@onready var color_rect = $"."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	time += delta/9
	var value = (sin(time - PI /2)+1.0)/5.0
	self.color = gradient.gradient.sample(value)

