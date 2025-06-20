extends Node
class_name SaveLoad

const FILE_PATH := "user://save.cfg"

func save(state: Dictionary):
    var c = ConfigFile.new()
    for k in state.keys():
        c.set_value("save", k, state[k])
    c.save(FILE_PATH)

func load() -> Dictionary:
    var c = ConfigFile.new()
    var err = c.load(FILE_PATH)
    if err != OK:
        return {}
    var data = {}
    for k in c.get_section_keys("save"):
        data[k] = c.get_value("save", k)
    return data
