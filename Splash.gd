extends Control


func _ready():
	
	$AnimationPlayer.play("Fade In")
	await(get_tree().create_timer(4).timeout)
	$AnimationPlayer.play("Fade Out")
	await(get_tree().create_timer(3).timeout)
	get_tree().change_scene_to_file("res://Scenes/Main/game_scene.tscn")
