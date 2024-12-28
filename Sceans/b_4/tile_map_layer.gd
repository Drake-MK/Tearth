extends TileMapLayer  # Attach this script to your TileMap node

@export var map_width: int = 50
@export var map_height: int = 50
@export var tile_size: int = 16  # Adjust as per your tiles
@export var noise_frequency: float = 0.05
@export var seed: int = 12345  # Change for different maps

const TILE_GRASS = 0  # Grass tile ID
const TILE_WATER = 1  # Water tile ID

var noise: FastNoiseLite = FastNoiseLite.new()  # Create a noise instance

func _ready():
	# Configure noise
	noise.seed = seed
	noise.frequency = noise_frequency
	noise.fractal_octaves = 4  # More octaves = more detail

	generate_map()  # Generate the map when the game starts

func generate_map():
	for x in range(map_width):
		for y in range(map_height):
			var value = noise.get_noise_2d(x, y)  # Get noise value
			if value > 0.0:  # Adjust threshold for different results
				set_cell(Vector2i(x, y), TILE_GRASS)  # Place grass tile
			else:
				set_cell(Vector2i(x, y), TILE_WATER)  # Place water tile
