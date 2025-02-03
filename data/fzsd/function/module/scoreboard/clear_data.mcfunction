# 調用者：#fzsd:module/scoreboard/clear_data

## 刪除計分板
### 總覽
scoreboard objectives remove fzsd.module.scoreboard.assign.general
scoreboard objectives remove fzsd.module.scoreboard.display.general
### 活躍度
scoreboard objectives remove fzsd.module.scoreboard.display.activation
### 飛行距離
scoreboard objectives remove fzsd.module.scoreboard.display.aviating_distance
### 受傷害榜
scoreboard objectives remove fzsd.module.scoreboard.display.damage_taken
### 死亡榜
scoreboard objectives remove fzsd.module.scoreboard.display.death_count
### 挖掘榜
scoreboard objectives remove fzsd.module.scoreboard.display.dig_count
### 釣魚榜
scoreboard objectives remove fzsd.module.scoreboard.display.fishing_count
### 擊殺榜
scoreboard objectives remove fzsd.module.scoreboard.display.kill_count
### 交易榜
scoreboard objectives remove fzsd.module.scoreboard.display.trade_count

## 清除隊伍
### 輪播
team remove fzsd.module.scoreboard.display.carousel
### 總覽
team remove fzsd.module.scoreboard.display.general
### 活躍度
team remove fzsd.module.scoreboard.display.activation
### 飛行距離
team remove fzsd.module.scoreboard.display.aviating_distance
### 受傷害榜
team remove fzsd.module.scoreboard.display.damage_taken
### 死亡榜
team remove fzsd.module.scoreboard.display.death_count
### 挖掘榜
team remove fzsd.module.scoreboard.display.dig_count
### 釣魚榜
team remove fzsd.module.scoreboard.display.fishing_count
### 擊殺榜
team remove fzsd.module.scoreboard.display.kill_count
### 交易榜
team remove fzsd.module.scoreboard.display.trade_count

## 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已刪除計分板資料！"}]