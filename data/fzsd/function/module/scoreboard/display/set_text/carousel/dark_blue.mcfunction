# 調用者：#fzsd:module/scoreboard/display/set_text/carousel

data modify storage fzsd:module fzsd.module.scoreboard.text.carousel set value '{"text": "輪播", "color": "dark_blue"}'
team modify fzsd.module.scoreboard.display.carousel color dark_blue
team modify fzsd.module.scoreboard.display.carousel displayName {"text": "輪播", "color": "dark_blue"}
scoreboard players set fzsd.module.scoreboard.carousel.color fzsd.variable.integer 1