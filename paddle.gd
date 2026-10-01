extends CharacterBody2D

@export var speed := 500.0
@export var up_action := "p1_up"
@export var down_action := "p1_down"

func _physics_process(_delta):
	var dir := Input.get_axis(up_action, down_action)
	velocity = Vector2(0, dir * speed)
	move_and_slide()
	position.y = clamp(position.y, 60, get_viewport_rect().size.y - 60)
