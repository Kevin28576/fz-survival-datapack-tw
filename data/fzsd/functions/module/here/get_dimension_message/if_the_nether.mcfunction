data modify storage fzsd:here fzsd.overworld_pos set value [0, 0]
execute store result storage fzsd:here fzsd.overworld.x int 8 run data get entity @s Pos[0]
execute store result storage fzsd:here fzsd.overworld.z int 8 run data get entity @s Pos[2]
data modify storage fzsd:global fzsd.api.dimension.id set value "minecraft:overworld"
function #fzsd:api/get_dimension_name
data modify storage fzsd:here fzsd.message.append set value '[{"text": "，對應", "color": "white"}, {"nbt": "fzsd.api.dimension.name", "interpret": true, "storage": "fzsd:global"}, [{"text": " [", "color": "green"}, {"nbt": "fzsd.overworld.x", "storage": "fzsd:here"}, {"text": ", "}, {"nbt": "fzsd.overworld.z", "storage": "fzsd:here"}, {"text": "]"}]]'
## 恢復用於判斷的維度id