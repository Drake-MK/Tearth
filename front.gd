extends Node2D

@onready var tilemap = $TileMapLayer
@onready var sprite_2d = $Sprite2D

# Called when the node enters the scene tree for the first time.

const  Map_soze = Vector2(128,128)
const Land_cap = 0.3
func _ready():
	generate_wrorld()
	
func generate_wrorld():
	var noise = FastNoiseLite.new()
	noise.seed = 100
	var cells = []
	for x in Map_soze.x:
		for y in Map_soze.y :
			var a = noise.get_noise_2d(x,y)
			if a < Land_cap:
				cells.append(Vector2(x,y))
	tilemap.set_cells_terrain_connect(cells,0,0,0)
		
