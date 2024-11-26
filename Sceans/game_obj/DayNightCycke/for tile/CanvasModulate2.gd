extends CanvasModulate

var time:float = 0.0 
# Called when the node enters the scene tree for the first time.
@export var gradient2 :GradientTexture1D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	time += delta/3
	var value = (sin(time - PI /2)+1.0)/5.0
	self.color = gradient2.gradient.sample(value)
