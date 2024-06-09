extends Node2D

enum StartDirection {DIRECTION_LEFT = -1, DIRECTION_RIGHT = 1}

@export var speed = 10
@export var start_direction = StartDirection.DIRECTION_LEFT

var velocity = Vector2.ZERO 
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocity.x = start_direction
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity = velocity * speed
	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)
	
	velocity = velocity.normalized()
