# 見./on_click

team join fzsd.module.scoreboard.display.bedrock_broken_count @s

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "玩家"}, {"selector": "@s"}, {"text": "訂閱了"}, {"nbt": "text", "interpret": true, "storage": "fzsd.extra.bbl:text"}, {"text": "計分板"}]