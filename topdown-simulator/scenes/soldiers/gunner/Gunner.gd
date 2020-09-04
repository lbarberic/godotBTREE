extends Soldier

var MOVE_SPEED = speed - 200

onready var raycast = $RayCast2D
var reloading = $"Node2D/DamageStatus".text


func _ready():
	add_to_group("zombies")

func _physics_process(delta):
	var vec_to_player = player.global_position - global_position
	global_rotation = atan2(vec_to_player.y, vec_to_player.x)
	velocity = velocity.normalized()
	velocity *= speed
	move_and_collide(velocity * delta)

func set_player(p):
	var player = null
	player = p
