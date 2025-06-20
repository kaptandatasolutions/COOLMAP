extends CharacterBody3D

@export var speed: float = 4.0
@export var jump_velocity: float = 4.5

var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")

func _physics_process(delta):
    var direction = Vector3.ZERO
    direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
    direction.z = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
    direction = direction.normalized()
    var vel = Vector3.ZERO
    vel.x = direction.x * speed
    vel.z = direction.z * speed
    velocity.x = vel.x
    velocity.z = vel.z

    if not is_on_floor():
        velocity.y -= gravity * delta
    elif Input.is_action_just_pressed("ui_accept"):
        velocity.y = jump_velocity

    move_and_slide()
