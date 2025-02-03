# 見#fzsd.extra.bbl:display/set_text

data modify storage fzsd:module fzsd.module.scoreboard.text.bedrock_broken_count set value '{"text": "破基岩榜", "color": "gray"}'
scoreboard objectives setdisplay sidebar.team.gray fzsd.module.scoreboard.display.bedrock_broken_count
scoreboard objectives modify fzsd.module.scoreboard.display.bedrock_broken_count displayname {"text": "破基岩榜", "color": "gray"}
team modify fzsd.module.scoreboard.display.bedrock_broken_count color gray
team modify fzsd.module.scoreboard.display.bedrock_broken_count displayName {"text": "破基岩榜", "color": "gray"}
