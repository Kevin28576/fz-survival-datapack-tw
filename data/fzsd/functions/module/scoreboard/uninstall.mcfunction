# 調用者：#fzsd:module/scoreboard/uninstall

## 關閉輪播循環
schedule clear fzsd:module/scoreboard/display/carousel/loop

## 關閉計分板顯示
scoreboard objectives setdisplay sidebar.team.aqua
scoreboard objectives setdisplay sidebar.team.black
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.dark_aqua
scoreboard objectives setdisplay sidebar.team.dark_blue
scoreboard objectives setdisplay sidebar.team.dark_gray
scoreboard objectives setdisplay sidebar.team.dark_green
scoreboard objectives setdisplay sidebar.team.dark_purple
scoreboard objectives setdisplay sidebar.team.dark_red
scoreboard objectives setdisplay sidebar.team.gold
scoreboard objectives setdisplay sidebar.team.gray
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.light_purple
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.white
scoreboard objectives setdisplay sidebar.team.yellow

team remove fzsd.module.scoreboard.fake
team remove fzsd.module.scoreboard.shadow

## 詢問是否清除數據
execute if score fzsd.logger.level fzsd.variable.integer matches ..600 run tellraw @s [{"nbt": "fzsd.level.alert", "interpret": true, "storage": "fzsd:logger"}, {"text": "您要刪除計分板資料嗎，它將會永久失去！ (真的很久！)"}, {"text": "[確定]", "color": "dark_red", "clickEvent": {"action": "suggest_command", "value": "/function #fzsd:module/scoreboard/clear_data"}, "hoverEvent": {"action": "show_text", "contents": {"text": "將指令填入聊天框"}}}]

## 標記為已解除安裝
data modify storage fzsd:install fzsd.module.scoreboard set value 0b

## 紀錄
execute if score fzsd.logger.level fzsd.variable.integer matches ..500 run tellraw @a [{"nbt": "fzsd.level.info", "interpret": true, "storage": "fzsd:logger"}, {"text": "已解除安裝擴展：計分板"}]