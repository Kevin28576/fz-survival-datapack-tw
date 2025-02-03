# 調用者：#fzsd:module/scoreboard/display/set_text/carousel

data modify storage fzsd:module fzsd.module.scoreboard.text.carousel set value '{"text": "輪播", "color": "gray"}'
team modify fzsd.module.scoreboard.display.carousel color gray
team modify fzsd.module.scoreboard.display.carousel displayName {"text": "輪播", "color": "gray"}
scoreboard players set fzsd.module.scoreboard.carousel.color fzsd.variable.integer 7