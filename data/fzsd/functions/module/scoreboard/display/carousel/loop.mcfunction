# 調用者：#fzsd:module/scoreboard/display/carousel_controller/loop

function #fzsd:module/scoreboard/display/carousel/try_display

schedule function fzsd:module/scoreboard/display/carousel/loop 10s replace

## 自增
scoreboard players add fzsd.module.scoreboard.display.current_id fzsd.variable.integer 1
## 循環
execute if score fzsd.module.scoreboard.display.current_id fzsd.variable.integer > fzsd.module.scoreboard.display.highest_id fzsd.variable.integer run scoreboard players set fzsd.module.scoreboard.display.current_id fzsd.variable.integer 0