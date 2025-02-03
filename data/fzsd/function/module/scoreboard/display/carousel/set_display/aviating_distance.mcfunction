# 調用者：fzsd:module/scoreboard/carousel/try_display/~

## 判斷顏色代碼，見：https://minecraft.fandom.com/zh/wiki/%E6%A0%BC%E5%BC%8F%E5%8C%96%E4%BB%A3%E7%A0%81
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 6 run scoreboard objectives setdisplay sidebar.team.gold fzsd.module.scoreboard.display.aviating_distance
### 預設值金色放到第一位
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 6 if score fzsd.logger.level fzsd.variable.integer matches ..300 run tellraw @a [{"nbt": "fzsd.level.fine", "interpret": true, "storage": "fzsd:logger"}, {"text": "已為隊伍"}, {"nbt": "fzsd.module.scoreboard.text.carousel", "interpret": true, "storage": "fzsd:module"}, {"text": "顯示"}, {"nbt": "fzsd.module.scoreboard.text.aviating_distance", "interpret": true, "storage": "fzsd:module"}, {"text": "計分板"}]
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 6 run return 6

execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 0 run scoreboard objectives setdisplay sidebar.team.black fzsd.module.scoreboard.display.aviating_distance
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 1 run scoreboard objectives setdisplay sidebar.team.dark_blue fzsd.module.scoreboard.display.aviating_distance
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 2 run scoreboard objectives setdisplay sidebar.team.dark_green fzsd.module.scoreboard.display.aviating_distance
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 3 run scoreboard objectives setdisplay sidebar.team.dark_aqua fzsd.module.scoreboard.display.aviating_distance
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 4 run scoreboard objectives setdisplay sidebar.team.dark_red fzsd.module.scoreboard.display.aviating_distance
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 5 run scoreboard objectives setdisplay sidebar.team.dark_purple fzsd.module.scoreboard.display.aviating_distance
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 7 run scoreboard objectives setdisplay sidebar.team.gray fzsd.module.scoreboard.display.aviating_distance
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 8 run scoreboard objectives setdisplay sidebar.team.dark_gray fzsd.module.scoreboard.display.aviating_distance
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 9 run scoreboard objectives setdisplay sidebar.team.blue fzsd.module.scoreboard.display.aviating_distance
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 10 run scoreboard objectives setdisplay sidebar.team.green fzsd.module.scoreboard.display.aviating_distance
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 11 run scoreboard objectives setdisplay sidebar.team.aqua fzsd.module.scoreboard.display.aviating_distance
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 12 run scoreboard objectives setdisplay sidebar.team.red fzsd.module.scoreboard.display.aviating_distance
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 13 run scoreboard objectives setdisplay sidebar.team.light_purple fzsd.module.scoreboard.display.aviating_distance
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 14 run scoreboard objectives setdisplay sidebar.team.yellow fzsd.module.scoreboard.display.aviating_distance
execute if score fzsd.module.scoreboard.carousel.color fzsd.variable.integer matches 15 run scoreboard objectives setdisplay sidebar.team.white fzsd.module.scoreboard.display.aviating_distance

## 詳細
execute if score fzsd.logger.level fzsd.variable.integer matches ..300 run tellraw @a [{"nbt": "fzsd.level.fine", "interpret": true, "storage": "fzsd:logger"}, {"text": "已為隊伍"}, {"nbt": "fzsd.module.scoreboard.text.carousel", "interpret": true, "storage": "fzsd:module"}, {"text": "顯示"}, {"nbt": "fzsd.module.scoreboard.text.aviating_distance", "interpret": true, "storage": "fzsd:module"}, {"text": "計分板"}]