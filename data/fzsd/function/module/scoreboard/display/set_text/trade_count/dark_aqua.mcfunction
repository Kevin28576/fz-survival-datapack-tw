# 調用者：#fzsd:module/scoreboard/display/set_text/trade_count

data modify storage fzsd:module fzsd.module.scoreboard.text.trade_count set value '{"text": "交易榜", "color": "dark_aqua"}'
scoreboard objectives setdisplay sidebar.team.dark_aqua fzsd.module.scoreboard.display.trade_count
scoreboard objectives modify fzsd.module.scoreboard.display.trade_count displayname {"text": "交易榜", "color": "dark_aqua"}
team modify fzsd.module.scoreboard.display.trade_count color dark_aqua
team modify fzsd.module.scoreboard.display.trade_count displayName {"text": "交易榜", "color": "dark_aqua"}