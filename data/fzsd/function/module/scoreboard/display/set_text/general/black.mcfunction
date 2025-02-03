# 調用者：#fzsd:module/scoreboard/display/set_text/general

data modify storage fzsd:module fzsd.module.scoreboard.text.general set value '{"text": "總覽", "color": "black"}'
scoreboard objectives setdisplay sidebar.team.black fzsd.module.scoreboard.display.general
scoreboard objectives modify fzsd.module.scoreboard.display.general displayname {"text": "總覽", "color": "black"}
team modify fzsd.module.scoreboard.display.general color black
team modify fzsd.module.scoreboard.display.general displayName {"text": "總覽", "color": "black"}