# 調用者：#fzsd:module/scoreboard/install

## 源計分板

### 總覽
scoreboard objectives add fzsd.module.scoreboard.assign.general dummy

## 轮播
team add fzsd.module.scoreboard.display.carousel

## 显示计分板
###### 判据均为dummy，便于升级维护！

### 總覽
scoreboard objectives add fzsd.module.scoreboard.display.general dummy
team add fzsd.module.scoreboard.display.general

### 活躍度
scoreboard objectives add fzsd.module.scoreboard.display.activation dummy
team add fzsd.module.scoreboard.display.activation

### 飛行距離
scoreboard objectives add fzsd.module.scoreboard.display.aviating_distance dummy
team add fzsd.module.scoreboard.display.aviating_distance

### 抖M榜
scoreboard objectives add fzsd.module.scoreboard.display.damage_taken dummy
team add fzsd.module.scoreboard.display.damage_taken

### 死亡榜
scoreboard objectives add fzsd.module.scoreboard.display.death_count dummy
team add fzsd.module.scoreboard.display.death_count

### 挖掘榜
scoreboard objectives add fzsd.module.scoreboard.display.dig_count dummy
team add fzsd.module.scoreboard.display.dig_count

### 釣魚榜
scoreboard objectives add fzsd.module.scoreboard.display.fishing_count dummy
team add fzsd.module.scoreboard.display.fishing_count

### 擊殺榜
scoreboard objectives add fzsd.module.scoreboard.display.kill_count dummy
team add fzsd.module.scoreboard.display.kill_count

### 放置榜
scoreboard objectives add fzsd.module.scoreboard.display.placement_count dummy
team add fzsd.module.scoreboard.display.placement_count

### 交易榜
scoreboard objectives add fzsd.module.scoreboard.display.trade_count dummy
team add fzsd.module.scoreboard.display.trade_count

team add fzsd.module.scoreboard.fake
team add fzsd.module.scoreboard.shadow
execute unless data storage fzsd:config fzsd.module.scoreboard{fake_player_prefix:false} run team modify fzsd.module.scoreboard.fake prefix {"text": "假人"}
execute unless data storage fzsd:config fzsd.module.scoreboard{fake_player_prefix:false} run team modify fzsd.module.scoreboard.shadow prefix {"text": "掛機"}

## 標記為已安裝
data modify storage fzsd:install fzsd.module.scoreboard set value 1b

## 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已安裝擴展：計分板"}]