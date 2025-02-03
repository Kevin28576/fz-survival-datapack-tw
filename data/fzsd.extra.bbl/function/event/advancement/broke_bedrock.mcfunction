# 見advancements/fzsd.extra.bbl:broke_bedrock
## 排除假人並觸發事件
execute if predicate fzsd:is_real_player run function fzsd.extra.bbl:event/player/broke_bedrock

## 重置事件
scoreboard players set @s fzsd.extra.bbl 0
advancement revoke @s only fzsd.extra.bbl:broke_bedrock