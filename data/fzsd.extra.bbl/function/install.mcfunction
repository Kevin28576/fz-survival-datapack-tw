# 應在原模組安裝時一併安裝模組擴展，請參閱 #fzsd:module/scoreboard/install
## 同時應在載入時偵測是否需要重新安裝，請參閱./try_install
## 新增底層實現計分板
scoreboard objectives add fzsd.extra.bbl dummy
## 新增顯示計分板
scoreboard objectives add fzsd.module.scoreboard.display.bedrock_broken_count dummy
## 新增計分板訂閱隊伍
team add fzsd.module.scoreboard.display.bedrock_broken_count
## 設為已安裝
data modify storage fzsd:install fzsd.extra.bbl set value 1b
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已安裝擴展：破基岩榜"}]