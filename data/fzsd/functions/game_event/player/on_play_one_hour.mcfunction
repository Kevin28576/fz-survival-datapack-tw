## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已觸發：玩家"}, {"selector": "@s"}, {"text": "遊玩了1小時"}]

## 將事件資料緩存
# scoreboard players operation fzsd.var.score fzsd.variable.integer = @s fzsd.event.play_ticks
# scoreboard players operation fzsd.var.score fzsd.variable.integer /= 3600 fzsd.variable.integer

## 運行事件
function #fzsd:game_event/player/on_play_one_hour