# 調用者：advancements/fzsd:~

execute if predicate fzsd:is_real_player run function fzsd:game_event/player/on_took_damage

## 重置事件
scoreboard players operation @s fzsd.event.damage_taken %= 10 fzsd.variable.integer
advancement revoke @s from fzsd:game_event/on_took_damage