# 調用者：fzsd:game_event/game/on_night/on_tick

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已觸發：夜幕降臨"}]

## 運行事件
function #fzsd:game_event/game/on_night