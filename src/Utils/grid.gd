class_name Grid
extends Object

# set the size of each tile as 16x16px
const tile_size = Vector2i(16,16)

# every 1 map grid space (1 space) is the size of 1 tile space (16px^2)
static func grid_to_world(grid_pos: Vector2i) -> Vector2i:
	var wold_pos: Vector2i = grid_pos * tile_size
	return wold_pos
	
# every 1 tile space (16px^2) is the size of 1 grid space (1 space)
static func world_to_grid(world_pos: Vector2i) -> Vector2i:
	var grid_pos: Vector2i = world_pos / tile_size
	return grid_pos
