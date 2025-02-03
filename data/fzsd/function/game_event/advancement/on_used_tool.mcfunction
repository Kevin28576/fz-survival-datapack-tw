# 調用者：advancements/fzsd:~

execute if predicate fzsd:is_real_player run function fzsd:game_event/player/on_used_tool

## 重置事件計分板
function #fzsd:game_event/player/on_used_tool/reset_used_tool

## 重置事件進度
advancement revoke @s from fzsd:game_event/on_used_tool