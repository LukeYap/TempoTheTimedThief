class_name StateMachine extends Node

# List of possible character states.
var states: Array[State]

# Variable representing the current state.
@export var current_state: State

# get_children() snags all the child nodes.
# If the node is of the State class, append it to the list of states.
func _ready():
	for child: State in get_children():
		if child is State:
			states.append(child)

# Checks if the player can move.
func can_player_move():
	return current_state.can_move
