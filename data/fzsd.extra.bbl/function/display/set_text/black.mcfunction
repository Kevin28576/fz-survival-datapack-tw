# 見#fzsd.extra.bbl:display/set_text

data modify storage fzsd:module fzsd.module.scoreboard.text.bedrock_broken_count set value '{"text": "破基岩榜", "color": "black"}'
scoreboard objectives setdisplay sidebar.team.black fzsd.module.scoreboard.display.bedrock_broken_count
scoreboard objectives modify fzsd.module.scoreboard.display.bedrock_broken_count displayname {"text": "破基岩榜", "color": "black"}
team modify fzsd.module.scoreboard.display.bedrock_broken_count color black
team modify fzsd.module.scoreboard.display.bedrock_broken_count displayName {"text": "破基岩榜", "color": "black"}
