extends Node
class_name Shop

@export var catalogue: Dictionary = {
    "Laptop": 1200,
    "Snack": 5,
    "Book": 20
}

signal item_purchased(item_name)

func buy(item_name: String, inventory: Node):
    if not catalogue.has(item_name):
        push_error("Item not found")
        return
    emit_signal("item_purchased", item_name)
    await get_tree().create_timer(60.0).timeout # simulate 1 in‑game day (for demo)
    inventory.add_item(item_name)
