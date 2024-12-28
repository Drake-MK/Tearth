extends Node
@onready var sfx = $"PokemonFireRedLeafGreen-PokemonTower"
@onready var dark_tileset = $"../Map/Canvas"



# Called when the node enters the scene tree for the first time.
func _ready():
	print(sfx.pitch_scale)
	dark_tileset.visible = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_pokemon_fire_red_leaf_green_pokemon_tower_finished():
	pass # Replace with function body.
	sfx.play()
	if sfx.pitch_scale <0.2:
		sfx.pitch_scale = 1
	sfx.pitch_scale -= 0.1
	

func _on_kill_zone_body_entered(body):
	if body.is_in_group("player"):
		get_tree().reload_current_scene()
