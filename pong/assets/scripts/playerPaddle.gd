extends CharacterBody2D

@export var x_offset = 40
@export var side = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var referenceOrigin
	match side:
		0:
			referenceOrigin = 0
		1:
			referenceOrigin = get_viewport_rect().size[0] - 20
			x_offset *= -1
	
	position.x = referenceOrigin + x_offset
	position.y = 0.5 * get_viewport_rect().size.y

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	movePaddle()

func movePaddle() -> void:
	var delY = get_global_mouse_position().y - position.y
	move_and_collide(Vector2(0, delY))
