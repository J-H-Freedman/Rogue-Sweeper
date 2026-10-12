class_name EventHandler
extends Node

func get_action() -> Action:
	# default action is null. input needed.
	var action: Action = null
	
	# on a move input, move accordingly
	if Input.is_action_just_pressed("ui_up"):
		action = MovementAction.new(0,-1)
	elif Input.is_action_just_pressed("ui_down"):
		action = MovementAction.new(0,1)
	elif Input.is_action_just_pressed("ui_left"):
		action = MovementAction.new(-1,0)
	elif Input.is_action_just_pressed("ui_right"):
		action = MovementAction.new(1,0)

	# on an cancel input (ESC), the close window
	if Input.is_action_just_pressed("ui_cancel"):
		action = EscapeAction.new()
		
	return action
