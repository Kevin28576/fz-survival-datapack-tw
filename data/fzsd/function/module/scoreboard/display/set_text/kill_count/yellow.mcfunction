# 調用者：#fzsd:module/scoreboard/display/set_text/kill_count

data modify storage fzsd:module fzsd.module.scoreboard.text.kill_count set value '{"text": "擊殺榜", "color": "yellow"}'
scoreboard objectives setdisplay sidebar.team.yellow fzsd.module.scoreboard.display.kill_count
scoreboard objectives modify fzsd.module.scoreboard.display.kill_count displayname {"text": "擊殺榜", "color": "yellow"}
team modify fzsd.module.scoreboard.display.kill_count color yellow
team modify fzsd.module.scoreboard.display.kill_count displayName {"text": "擊殺榜", "color": "yellow"}