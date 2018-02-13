extends Control

export (PackedScene) var next_scene

var next_scene_instance = null

# Loading Thread
onready var loading_thread = Thread.new()

# Bootstrap data for the game, kick off loading screen
func _ready():
    # Begin loading data
    loading_thread.start(self, "load_data")

    # Display loading screen
    load_next_scene()

# Loads any specified data, resource, etc.
#
# userdata - any variables defined for loading purposes, can be left null
#
# Returns nothing
func load_data(userdata):
    # Load resources ahead of time here
    # Like checking and loading player save data

    print("Loading") # This is literally here so it functions atm

    call_deferred("loading_finished")

# Loads PackedScene stored at next_scene
#
# Returns nothing
func load_next_scene():
    # Create an instance of next_scene
    next_scene_instance = next_scene.instance()

    # Add to scene as child, do not replace current scene yet
    # We need it around to finish the loading thread
    add_child(next_scene_instance)

# Sets the is_loading var to false in the child scene when Thread is done
#
# Returns nothing
func loading_finished():
    next_scene_instance.is_loading = false