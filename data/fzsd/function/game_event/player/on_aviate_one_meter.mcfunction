## 詳細
execute if score fzsd.logger.level fzsd.variable.integer matches ..300 run tellraw @a [{"nbt": "fzsd.level.fine", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已觸發：玩家"}, {"selector": "@s"}, {"text": "飛行了1公尺"}]

## 將事件資料緩存
scoreboard players operation fzsd.var.score fzsd.variable.integer = @s fzsd.event.aviating_distance
scoreboard players operation fzsd.var.score fzsd.variable.integer /= 200 fzsd.variable.integer

## 運行事件
function #fzsd:game_event/player/on_aviate_one_meter