# 調用者：advancements/fzsd:~

execute if predicate fzsd:is_real_player run function fzsd:game_event/player/on_play_one_hour

## 重置事件
scoreboard players operation @s fzsd.event.play_ticks %= 72000 fzsd.variable.integer
advancement revoke @s from fzsd:game_event/on_play_one_hour