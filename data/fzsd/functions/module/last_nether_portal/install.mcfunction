scoreboard objectives add fzsd.module.last_nether_portal.dimension dummy
scoreboard objectives add fzsd.module.last_nether_portal.x dummy
scoreboard objectives add fzsd.module.last_nether_portal.y dummy
scoreboard objectives add fzsd.module.last_nether_portal.z dummy

## 標記為已安裝
data modify storage fzsd:install fzsd.module.last_nether_portal set value 1b

## 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已安裝擴展：上次進入的地獄門"}]