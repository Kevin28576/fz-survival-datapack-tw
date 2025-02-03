# 調用者：#fzsd:module/scoreboard/display/set_text/dig_count

data modify storage fzsd:module fzsd.module.scoreboard.text.dig_count set value '{"text": "挖掘榜", "color": "aqua"}'
scoreboard objectives setdisplay sidebar.team.aqua fzsd.module.scoreboard.display.dig_count
scoreboard objectives modify fzsd.module.scoreboard.display.dig_count displayname {"text": "挖掘榜", "color": "aqua"}
team modify fzsd.module.scoreboard.display.dig_count color aqua
team modify fzsd.module.scoreboard.display.dig_count displayName {"text": "挖掘榜", "color": "aqua"}