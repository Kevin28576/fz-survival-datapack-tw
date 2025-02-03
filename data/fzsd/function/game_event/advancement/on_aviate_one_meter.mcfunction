# 調用者：advancements/fzsd:~

execute if predicate fzsd:is_real_player run function fzsd:game_event/player/on_aviate_one_meter

## 重置事件
scoreboard players operation @s fzsd.event.aviating_distance %= 200 fzsd.variable.integer
advancement revoke @s from fzsd:game_event/on_aviate_one_meter