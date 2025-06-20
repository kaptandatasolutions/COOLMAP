extends Node

enum Weather { CLEAR, RAIN, SNOW }
signal weather_changed(new_weather)

@export var change_every_hours: float = 6.0
var current_weather = Weather.CLEAR
var _timer := 0.0

func _process(delta):
    _timer += delta
    if _timer >= change_every_hours * 60.0: # minutes of real‑time (1 h in‑game = 0.416 min)
        _timer = 0.0
        current_weather = Weather.values()[randi() % Weather.values().size()]
        emit_signal("weather_changed", current_weather)
