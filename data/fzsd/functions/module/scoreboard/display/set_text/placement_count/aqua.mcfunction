# 調用者：#fzsd:module/scoreboard/display/set_text/placement_count

data modify storage fzsd:module fzsd.module.scoreboard.text.placement_count set value '{"text": "建造榜", "color": "aqua"}'
scoreboard objectives setdisplay sidebar.team.aqua fzsd.module.scoreboard.display.placement_count
scoreboard objectives modify fzsd.module.scoreboard.display.placement_count displayname {"text": "建造榜", "color": "aqua"}
team modify fzsd.module.scoreboard.display.placement_count color aqua
team modify fzsd.module.scoreboard.display.placement_count displayName {"text": "建造榜", "color": "aqua"}