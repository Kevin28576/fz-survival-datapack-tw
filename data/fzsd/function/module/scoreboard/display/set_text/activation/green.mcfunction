# 調用者：#fzsd:module/scoreboard/display/set_text/activation

data modify storage fzsd:module fzsd.module.scoreboard.text.activation set value '{"text": "活躍時間（h）", "color": "green"}'
scoreboard objectives setdisplay sidebar.team.green fzsd.module.scoreboard.display.activation
scoreboard objectives modify fzsd.module.scoreboard.display.activation displayname {"text": "活躍時間（h）", "color": "green"}
team modify fzsd.module.scoreboard.display.activation color green
team modify fzsd.module.scoreboard.display.activation displayName {"text": "活躍時間（h）", "color": "green"}