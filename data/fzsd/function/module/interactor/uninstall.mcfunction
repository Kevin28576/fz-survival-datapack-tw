schedule clear fzsd:module/interactor/loop

scoreboard objectives remove fzsd.module.interactor.trigger

## 標記為已解除安裝
data modify storage fzsd:install fzsd.module.interactor set value 0b

## 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已卸載擴展：控制器"}]