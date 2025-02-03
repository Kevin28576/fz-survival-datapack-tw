data modify storage fzsd:global fzsd.api.dimension.id set from entity @s LastDeathLocation.dimension
execute store result storage fzsd:last_death fzsd.x int 1 run data get entity @s LastDeathLocation.pos[0]
execute store result storage fzsd:last_death fzsd.y int 1 run data get entity @s LastDeathLocation.pos[1]
execute store result storage fzsd:last_death fzsd.z int 1 run data get entity @s LastDeathLocation.pos[2]

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "玩家"}, {"selector": "@s"}, {"text": "取得了死亡點"}]