data modify storage fzsd:here fzsd.nether_pos set value [0, 0]
execute store result storage fzsd:here fzsd.nether.x int 0.125 run data get entity @s Pos[0]
execute store result storage fzsd:here fzsd.nether.z int 0.125 run data get entity @s Pos[2]
data modify storage fzsd:global fzsd.api.dimension.id set value "minecraft:the_nether"
function #fzsd:api/get_dimension_name
data modify storage fzsd:here fzsd.message.append set value '[{"text": "，對應", "color": "white"}, {"nbt": "fzsd.api.dimension.name", "interpret": true, "storage": "fzsd:global"}, [{"text": " [", "color": "green"}, {"nbt": "fzsd.nether.x", "storage": "fzsd:here"}, {"text": ", "}, {"nbt": "fzsd.nether.z", "storage": "fzsd:here"}, {"text": "]"}]]'