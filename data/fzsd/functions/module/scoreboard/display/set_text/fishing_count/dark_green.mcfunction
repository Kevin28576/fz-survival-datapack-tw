# 調用者：#fzsd:module/scoreboard/display/set_text/fishing_count

data modify storage fzsd:module fzsd.module.scoreboard.text.fishing_count set value '{"text": "釣魚榜", "color": "dark_green"}'
scoreboard objectives setdisplay sidebar.team.dark_green fzsd.module.scoreboard.display.fishing_count
scoreboard objectives modify fzsd.module.scoreboard.display.fishing_count displayname {"text": "釣魚榜", "color": "dark_green"}
team modify fzsd.module.scoreboard.display.fishing_count color dark_green
team modify fzsd.module.scoreboard.display.fishing_count displayName {"text": "釣魚榜", "color": "dark_green"}