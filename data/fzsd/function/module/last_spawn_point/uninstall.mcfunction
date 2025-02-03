## 標記為已安裝
data modify storage fzsd:install fzsd.module.last_spawn_point set value 0b

## 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已解除安裝擴展：上一個出生點"}]