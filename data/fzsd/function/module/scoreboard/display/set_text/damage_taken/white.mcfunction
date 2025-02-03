# 調用者：#fzsd:module/scoreboard/display/set_text/damage_taken

data modify storage fzsd:module fzsd.module.scoreboard.text.damage_taken set value '{"text": "抖M榜", "color": "white"}'
scoreboard objectives setdisplay sidebar.team.white fzsd.module.scoreboard.display.damage_taken
scoreboard objectives modify fzsd.module.scoreboard.display.damage_taken displayname {"text": "抖M榜", "color": "white"}
team modify fzsd.module.scoreboard.display.damage_taken color white
team modify fzsd.module.scoreboard.display.damage_taken displayName {"text": "抖M榜", "color": "white"}