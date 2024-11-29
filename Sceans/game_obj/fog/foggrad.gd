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
		 	
	print(material)
func set_fog_speed(new_speed: Vector2):
	if material is ShaderMaterial:
		material.set_shader_param("speed", new_speed)

func set_fog_density(new_density: float):
	if material is ShaderMaterial:
		material.set_shader_param("density", new_density)
