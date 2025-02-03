## 重設所有事件進度
### 所有事件進度都繼承了 fzsd:game_event 進度，因此只需要一行指令：
advancement revoke @s from fzsd:game_event

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已重置玩家"}, {"selector": "@s"}, {"text": "的遊戲事件進度"}]