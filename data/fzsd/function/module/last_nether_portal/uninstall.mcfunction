scoreboard objectives remove fzsd.module.last_nether_portal.dimension
scoreboard objectives remove fzsd.module.last_nether_portal.x
scoreboard objectives remove fzsd.module.last_nether_portal.y
scoreboard objectives remove fzsd.module.last_nether_portal.z
data remove storage fzsd:last_nether_portal fzsd

## 標記為已安裝
data modify storage fzsd:install fzsd.module.last_nether_portal set value 0b

## 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已解除安裝擴展：上次進入的地獄門"}]