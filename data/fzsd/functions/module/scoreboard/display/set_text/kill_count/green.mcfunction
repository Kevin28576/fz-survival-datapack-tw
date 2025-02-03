# 調用者：#fzsd:module/scoreboard/display/set_text/kill_count

data modify storage fzsd:module fzsd.module.scoreboard.text.kill_count set value '{"text": "擊殺榜", "color": "green"}'
scoreboard objectives setdisplay sidebar.team.green fzsd.module.scoreboard.display.kill_count
scoreboard objectives modify fzsd.module.scoreboard.display.kill_count displayname {"text": "擊殺榜", "color": "green"}
team modify fzsd.module.scoreboard.display.kill_count color green
team modify fzsd.module.scoreboard.display.kill_count displayName {"text": "擊殺榜", "color": "green"}