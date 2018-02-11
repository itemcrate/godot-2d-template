extends Control

export (PackedScene) var next_scene

var next_scene_instance = null

# Loading Thread
onready var loading_thread = Thread.new()

# Bootstrap data for the game
func _ready():
    # Begin loading data
    loading_thread.start(self, "load_data")

    # Display loading screen
    loading_screen()

    loading_thread.wait_to_finish()

func load_data(vars):
    # Load resources ahead of time here
    # Like checking and loading player save data

    print("Loading") # This is literally here so it functions atm

    next_scene_instance.is_loading = false

func loading_screen():
    # Create an instance
    next_scene_instance = next_scene.instance()

    # Add to scene as child, do not replace current scene yet
    # We need it around to finish the loading thread
    add_child(next_scene_instance)
