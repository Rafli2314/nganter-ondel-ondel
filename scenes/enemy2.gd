extends CharacterBody2D

func _ready():
	$Interaction/Top.body_entered.connect(_on_top_hit)
	$Interaction/Left.body_entered.connect(_on_side_hit)
	$Interaction/Right.body_entered.connect(_on_side_hit)
	$Interaction/Down.body_entered.connect(_on_side_hit)

func _on_top_hit(body: Node2D) -> void:
	if body.is_in_group("player"):
		print("ENEMY DIINJEK")

		# player mantul
		if body.has_method("bounce"):
			body.bounce()

		# enemy mati
		queue_free()

func _on_side_hit(body: Node2D) -> void:
	if body.is_in_group("player"):
		print("PLAYER KENA MUSUH")
		# nanti bisa:
		# body.take_damage()
