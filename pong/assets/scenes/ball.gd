extends CharacterBody2D

enum StartDirection {DIRECTION_LEFT = -1, DIRECTION_RIGHT = 1}

@export var speed = 10
@export var start_direction = StartDirection.DIRECTION_LEFT

var screen_size

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocity.x = start_direction
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	velocity = velocity * speed
	
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		print(collision_info)
	
	velocity = velocity.normalized()
