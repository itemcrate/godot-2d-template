extends Control

export (PackedScene) var next_scene

# Bootstrap data for the game, kick off loading screen
func _ready():
    # Set a new random seed
    randomize()
    
    # Update global game state
    GameState.set_state(GameState.READY)
    
    # Display next packed scene
    load_next_scene()

# Loads PackedScene stored at next_scene
#
# Returns nothing
func load_next_scene():
    GameState.set_scene(next_scene, true)
