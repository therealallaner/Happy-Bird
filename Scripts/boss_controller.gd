extends Node


@onready var waveController = get_parent()
@onready var bossHPBar = get_parent().get_parent().get_node("Menus").get_node("GUI").get_node("BossHP")
@onready var mossyBoss = preload("res://Scenes/Bosses/mosquito_boss.tscn")
@onready var stealthBoss = preload("res://Scenes/Bosses/stealth_bomber.tscn")
@onready var heliBoss = preload("res://Scenes/Bosses/helicopter.tscn")

@onready var bosses = [
	stealthBoss,
	mossyBoss,
	heliBoss,
	
]



func Spawn_Boss(x):
	var b = bosses[0]
	var instance = b.instantiate()
	bosses.erase(b)
	bosses.append(b)
	add_child(instance)
	instance.position = Vector2(2020,540)
	instance.HP *= x
	bossHPBar.show()
	bossHPBar.max_value = instance.HP
	bossHPBar.value = instance.HP
	var targetX = instance.position.x - 350
	var targetY = instance.position.y
	instance.target = Vector2(targetX,targetY)
