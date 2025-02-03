## 距離上次睡覺時間
scoreboard objectives remove fzsd.api.time_since_rest

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已解除安裝系統擴展：API"}]