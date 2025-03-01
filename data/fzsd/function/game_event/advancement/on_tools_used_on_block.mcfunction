# 調用者：advancements/fzsd:~

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已觸發：玩家"}, {"selector": "@s"}, {"text": "在方塊上使用了工具"}]

## 計算挖掘資料偏移量
scoreboard players remove @s fzsd.event.used_tool.dig_offset 1

## 運行事件
function #fzsd:game_event/player/on_tools_used_on_block

## 重置事件進度
advancement revoke @s from fzsd:game_event/on_tools_used_on_block