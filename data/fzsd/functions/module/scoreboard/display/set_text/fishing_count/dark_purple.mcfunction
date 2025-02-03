# 調用者：#fzsd:module/scoreboard/display/set_text/fishing_count

data modify storage fzsd:module fzsd.module.scoreboard.text.fishing_count set value '{"text": "釣魚榜", "color": "dark_purple"}'
scoreboard objectives setdisplay sidebar.team.dark_purple fzsd.module.scoreboard.display.fishing_count
scoreboard objectives modify fzsd.module.scoreboard.display.fishing_count displayname {"text": "釣魚榜", "color": "dark_purple"}
team modify fzsd.module.scoreboard.display.fishing_count color dark_purple
team modify fzsd.module.scoreboard.display.fishing_count displayName {"text": "釣魚榜", "color": "dark_purple"}