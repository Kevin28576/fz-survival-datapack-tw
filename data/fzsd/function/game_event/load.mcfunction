execute as @a[predicate=fzsd:is_real_player] run function #fzsd:game_event/player/on_login
function fzsd:game_event/on_tick
## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已載入系統擴展：遊戲事件"}]