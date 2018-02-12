
extends Node

var current_scene = null

func _ready():
    # Set a new random seed
    randomize()

    # Get current scene at root, store into memory for use later
    current_scene = get_tree().get_root().get_child(get_tree().get_root().get_child_count() - 1)

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
    get_tree().get_root().add_child(current_scene)
