# 調用者：advancements/fzsd:~

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已觸發：玩家"}, {"selector": "@s"}, {"text": "擊殺了生物"}]

## 運行事件
function #fzsd:game_event/player/on_killed_mob_or_player

## 重置事件進度
advancement revoke @s from fzsd:game_event/on_killed_mob_or_player