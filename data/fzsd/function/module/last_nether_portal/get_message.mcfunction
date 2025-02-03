execute if score @s fzsd.module.last_nether_portal.dimension matches 0 run data modify storage fzsd:global fzsd.api.dimension.id set value "minecraft:overworld"
execute if score @s fzsd.module.last_nether_portal.dimension matches -1 run data modify storage fzsd:global fzsd.api.dimension.id set value "minecraft:the_nether"

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "玩家"}, {"selector": "@s"}, {"text": "取得了上次進入的地獄門"}]