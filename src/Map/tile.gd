class_name Tile
extends Sprite2D

# Through the use of tis definition, the tile only needs to hold a reference to
# the definition it shares without needing to copy the variables
var _definition: TileDefinition

func _init(grid_position: Vector2i, tile_definition: TileDefinition) -> void:
	centered = false
	position = Grid.grid_to_world(grid_position)
	set_tile_type(tile_definition)
	
# This uses the tile definition to set the variables for every tile used
func set_tile_type(tile_definition: TileDefinition) -> void:
	_definition = tile_definition
	texture = _definition.texture
	modulate = _definition.color_dark
	
func is_walkable() -> bool:
	return _definition.is_walkable

func is_transparent() -> bool:
	return _definition.is_transparent
