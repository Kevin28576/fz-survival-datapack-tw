# 見 #fzsd:module/scoreboard/uninstall
## 移除底層實現計分板
scoreboard objectives remove fzsd.extra.bbl
## 移除計分板訂閱隊伍
team remove fzsd.module.scoreboard.display.bedrock_broken_count
## 設為已解除安裝
data modify storage fzsd:install fzsd.extra.bbl set value 0b
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已解除安裝擴展：破基岩榜"}]
