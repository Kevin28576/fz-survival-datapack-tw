# 調用者：fzsd:module/scoreboard/interactor/subscribe/~

team join fzsd.module.scoreboard.display.aviating_distance @s

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "玩家"}, {"selector": "@s"}, {"text": "訂閱了"}, {"nbt": "fzsd.module.scoreboard.text.aviating_distance", "interpret": true, "storage": "fzsd:module"}, {"text": "計分板"}]