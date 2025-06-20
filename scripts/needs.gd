extends Node

@export var hunger: float = 100.0
@export var energy: float = 100.0
@export var mood: float = 100.0

@export var decay_rate: float = 5.0 # points per in‑game hour

func _process(delta):
    var decay = decay_rate * delta
    hunger = max(hunger - decay, 0.0)
    energy = max(energy - decay * 0.8, 0.0)
    mood = max(mood - decay * 0.5, 0.0)
