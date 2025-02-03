# 調用者：#fzsd:module/scoreboard/display/set_text/death_count

data modify storage fzsd:module fzsd.module.scoreboard.text.death_count set value '{"text": "死亡榜", "color": "white"}'
scoreboard objectives setdisplay sidebar.team.white fzsd.module.scoreboard.display.death_count
scoreboard objectives modify fzsd.module.scoreboard.display.death_count displayname {"text": "死亡榜", "color": "white"}
team modify fzsd.module.scoreboard.display.death_count color white
team modify fzsd.module.scoreboard.display.death_count displayName {"text": "死亡榜", "color": "white"}