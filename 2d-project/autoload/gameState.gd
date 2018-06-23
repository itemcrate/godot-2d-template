
extends Node

# Example of a global game state
enum GAME_STATE {
    START,
    LOADING,
    READY,
    RUNNING,
    PAUSED,
    EXIT
}

var current_scene = null 

# Initialize the game state with usually your first state
var game_state = GAME_STATE.START setget set_state, get_state

func _ready():
    # Get current scene at root, store into memory for use later
    current_scene = get_tree().get_root().get_child(get_tree().get_root().get_child_count() - 1)

# Getter for global game state
#
# Returns value set equivalent to GAME_STATE enum
func get_state():
    return game_state

# Loads in provided scene at root, freeing up whatever scene was there
#
# scene - PackedScene provided to be loaded in
#
# preloaded - Boolean defaulting to false if scene still needs to be loaded
#                 set true if scene was already loaded
#
# Returns nothing
func set_scene(scene, preloaded = false):
    var new_scene = null

    if (!preloaded):
        new_scene = ResourceLoader.load(scene)
    else:
        new_scene = scene

    current_scene.queue_free()
    current_scene = new_scene.instance()
    get_tree().get_root().call_deferred("add_child", current_scene)

# Setter for game_state, sets it to the new state value
#
# new_state - new state value to update game_state
#
# Returns nothing
func set_state(new_state):
    game_state = new_state
