# 調用者：#fzsd:module/scoreboard/interactor/subscribe/~

team leave @s

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "玩家"}, {"selector": "@s"}, {"text": "取消了計分板訂閱"}]