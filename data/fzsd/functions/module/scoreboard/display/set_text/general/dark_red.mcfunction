# 調用者：#fzsd:module/scoreboard/display/set_text/general

data modify storage fzsd:module fzsd.module.scoreboard.text.general set value '{"text": "總覽", "color": "dark_red"}'
scoreboard objectives setdisplay sidebar.team.dark_red fzsd.module.scoreboard.display.general
scoreboard objectives modify fzsd.module.scoreboard.display.general displayname {"text": "總覽", "color": "dark_red"}
team modify fzsd.module.scoreboard.display.general color dark_red
team modify fzsd.module.scoreboard.display.general displayName {"text": "總覽", "color": "dark_red"}