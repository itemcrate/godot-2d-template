
extends Node

var current_scene = null

func _ready():
    # Set a new random seed
    randomize()

    # Set current scene
    current_scene = get_tree().get_root().get_child(get_tree().get_root().get_child_count() - 1)

func set_scene(scene, preloaded):
    var new_scene = null

    if (!preloaded):
        new_scene = ResourceLoader.load(scene)
    else:
        new_scene = scene

    current_scene.queue_free()
    current_scene = new_scene.instance()
    get_tree().get_root().add_child(current_scene)
