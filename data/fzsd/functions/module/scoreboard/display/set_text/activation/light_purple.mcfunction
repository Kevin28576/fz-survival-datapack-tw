# 調用者：#fzsd:module/scoreboard/display/set_text/activation

data modify storage fzsd:module fzsd.module.scoreboard.text.activation set value '{"text": "活躍時間（h）", "color": "light_purple"}'
scoreboard objectives setdisplay sidebar.team.light_purple fzsd.module.scoreboard.display.activation
scoreboard objectives modify fzsd.module.scoreboard.display.activation displayname {"text": "活躍時間（h）", "color": "light_purple"}
team modify fzsd.module.scoreboard.display.activation color light_purple
team modify fzsd.module.scoreboard.display.activation displayName {"text": "活躍時間（h）", "color": "light_purple"}