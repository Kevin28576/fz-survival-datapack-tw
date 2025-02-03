# 調用者：#fzsd:module/scoreboard/display/set_text/aviating_distance

data modify storage fzsd:module fzsd.module.scoreboard.text.aviating_distance set value '{"text": "飛行距離", "color": "yellow"}'
scoreboard objectives setdisplay sidebar.team.yellow fzsd.module.scoreboard.display.aviating_distance
scoreboard objectives modify fzsd.module.scoreboard.display.aviating_distance displayname {"text": "飛行距離", "color": "yellow"}
team modify fzsd.module.scoreboard.display.aviating_distance color yellow
team modify fzsd.module.scoreboard.display.aviating_distance displayName {"text": "飛行距離", "color": "yellow"}