extends Control

export (PackedScene) var next_scene

onready var anim_player = get_node("animationPlayer")

func _ready():
    # Enable user input
    set_process_input(true)

    # Run loading_text animation
    loading_animation()

func _input(event):
    # If ui_select is triggered, attempt to load the next scene
    if (event.is_action_pressed("ui_select")):
        load_next_scene()

# Starts the loading animation, wires up signal for animation_finished
#     to call goto_next_scene and attempt to load next scene
#
# Returns nothing
func loading_animation():
    anim_player.play("loading_text")
    anim_player.connect("animation_finished", self, "goto_next_scene")

# Checks for loading state, if not loaded it restarts the animation -
#     otherwise it runs load_next_scene
#
# animation - animation that needs to be restarted if loading isn't finished
#
# Returns nothing  
func goto_next_scene(animation): 
    if (GameState.get_state() == GameState.LOADING):
        anim_player.play(animation)
    else:
        load_next_scene()

# Checks for loading state, if loaded it sets the next_scene
#
# Returns nothing  
func load_next_scene():
    if (GameState.get_state() != GameState.LOADING):
        GameState.set_scene(next_scene, true)