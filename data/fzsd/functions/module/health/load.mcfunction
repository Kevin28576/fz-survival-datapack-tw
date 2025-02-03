## @see compat_16
execute unless data storage fzsd:config fzsd.module.health.display{below_name: 0b} run scoreboard objectives setdisplay belowName fzsd.module.health
execute if data storage fzsd:config fzsd.module.health.display{below_name: 0b} run scoreboard objectives setdisplay belowName
execute unless data storage fzsd:config fzsd.module.health.display{list: 0b} run scoreboard objectives setdisplay list fzsd.module.health
execute if data storage fzsd:config fzsd.module.health.display{list: 0b} run scoreboard objectives setdisplay list

## 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已載入擴展：玩家血量顯示"}]