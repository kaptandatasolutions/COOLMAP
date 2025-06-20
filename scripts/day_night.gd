extends DirectionalLight3D

@export var day_length_minutes: float = 10.0 # real‑time

var time_of_day: float = 0.0 # 0..1

func _process(delta):
    time_of_day = (time_of_day + delta / (day_length_minutes * 60.0)) % 1.0
    rotation.x = time_of_day * TAU
