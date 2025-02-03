
execute store result storage fzsd:here fzsd.x int 1 run data get entity @s Pos[0]
execute store result storage fzsd:here fzsd.y int 1 run data get entity @s Pos[1]
execute store result storage fzsd:here fzsd.z int 1 run data get entity @s Pos[2]
data modify storage fzsd:here fzsd.message.append set value ''
data modify storage fzsd:here fzsd.dimension.name set from storage fzsd:global fzsd.api.dimension.name
## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "玩家"}, {"selector": "@s"}, {"text": "取得了位置信息"}]