extends KinematicBody2D
class_name Soldier


#don't forget to give soldier a weapon
export(int) var speed: = 500
var velocity: Vector2
onready var player = $"/root/TestLevel/YSort/Player"

func _ready() -> void:
	#weapon component
	$Weapon.set_parent(self)
	
	#npc ai component
	if has_node("AI"):
		$AI.set_parent(self)


func set_status(text: String) -> void:
	$"Node2D/Status".text = text




#fire weapon
func fire_weapon() -> void:
	$Weapon.fire()


#reload weapon
func reload_weapon() -> void:
	$Weapon.reload()


#damage simulation
#for now you will only see which weapon hit
func take_damage(text: String) -> void:
	$"Node2D/DamageStatus".text = text
	$HideDamageStatusTimer.start()


func _on_HideDamageStatusTimer_timeout() -> void:
	$"Node2D/DamageStatus".text = ""
