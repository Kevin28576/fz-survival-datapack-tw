# 調用者：#fzsd:module/scoreboard/display/set_text/placement_count

data modify storage fzsd:module fzsd.module.scoreboard.text.placement_count set value '{"text": "建造榜", "color": "yellow"}'
scoreboard objectives setdisplay sidebar.team.yellow fzsd.module.scoreboard.display.placement_count
scoreboard objectives modify fzsd.module.scoreboard.display.placement_count displayname {"text": "建造榜", "color": "yellow"}
team modify fzsd.module.scoreboard.display.placement_count color yellow
team modify fzsd.module.scoreboard.display.placement_count displayName {"text": "建造榜", "color": "yellow"}