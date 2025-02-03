scoreboard objectives add fzsd.module.interactor.trigger trigger
scoreboard objectives add fzsd.module.interactor.player.config dummy

## 標記為已安裝
data modify storage fzsd:install fzsd.module.interactor set value 1b

## 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已安裝擴展：控制器"}]