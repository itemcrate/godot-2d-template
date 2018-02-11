extends Node

var game_data = {}

func _ready():
    pass

func get(key):
    return game_data[key]

func store(key, data):
    game_data[key] = data
