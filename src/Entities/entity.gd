class_name Entity
extends Sprite2D

# on character generation...
func _init(start_position: Vector2i, entity_definition: EntityDefinition) -> void:
	centered = false
	grid_position = start_position
	texture = entity_definition.texture
	modulate = entity_definition.color

# moving overwites the previous grid position
func move(move_offset: Vector2i) -> void:
	grid_position += move_offset

# tracks the position on the grid
var grid_position: Vector2i:
	set(value):
		grid_position = value
		position = Grid.grid_to_world(grid_position)
		
