extends Control

export (PackedScene) var next_scene

var next_scene_instance = null

# Loading Thread
onready var loading_thread = Thread.new()

# Bootstrap data for the game, kick off loading screen
func _ready():
    # Set a new random seed
    randomize()
    
    # Display loading screen
    load_next_scene()
    
    # Start loading thread
    loading_thread_start()

# Loads PackedScene stored at next_scene
#
# Returns nothing
func load_next_scene():
    # Create an instance of next_scene
    next_scene_instance = next_scene.instance()

    # Add to scene as child, do not replace current scene yet
    # We need it around to finish the loading thread
    add_child(next_scene_instance)
    
# Loads any specified data, resource, etc.
#
# userdata - any variables defined for loading purposes, can be left null
#
# Returns nothing
func loading_thread_fetch_data(userdata):
    # Load resources ahead of time here
    # Like checking and loading player save data
    
    # This is literally here so it has something to do
    # Replace this with your own load calls or whatever
    print("Loading")

    call_deferred("loading_thread_finished")

# Sets the global game state to READY when thread is finished
#
# Returns nothing
func loading_thread_finished():
    loading_thread.wait_to_finish()
    GameState.set_state(GameState.READY)

# Starts the loading thread process, sets global game state to LOADING
#
# Returns nothing
func loading_thread_start():    
    # Start the loading thread
    GameState.set_state(GameState.LOADING)
    
    loading_thread.start(self, "loading_thread_fetch_data")