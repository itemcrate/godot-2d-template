extends Control

export (PackedScene) var next_scene

onready var anim_player = get_node("animationPlayer")

var is_loading = true

func _ready():
    # Enable user input
    set_process_input(true)

    # Run animation
    loading_animation()

func _input(event):
    if (event.is_action_pressed("ui_select")):
        next_scene()

func loading_animation():
    anim_player.play("loading_text")
    anim_player.connect("animation_finished", self, "goto_next_scene")

func goto_next_scene(animation):
    # If still loading while splash screen anim is done
    # Restart animation and we'll try again in 5 seconds (animation time)
    if (is_loading):
        anim_player.play(animation)
    else:
        next_scene()

func next_scene():
    if (!is_loading):
        print("Now loading next scene post-loading")

        # Go to next scene
        Global.set_scene(next_scene, true)