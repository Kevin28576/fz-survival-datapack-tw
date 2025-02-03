# 調用者：advancements/fzsd:~

execute if predicate fzsd:is_real_player run function fzsd:game_event/player/on_dead

## 重置事件
scoreboard players set @s fzsd.event.death_count 0
advancement revoke @s from fzsd:game_event/on_dead