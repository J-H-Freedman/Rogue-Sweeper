class_name EscapeAction
extends Action

# add the escape action to close window

func perform(game: Game, entity: Entity) -> void:
	game.get_tree().quit()
