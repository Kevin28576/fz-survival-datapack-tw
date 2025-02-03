# 調用者：#fzsd:module/interactor/on_click

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "玩家"}, {"selector": "@s"}, {"text": "的控制器分數為："}, {"score": {"name": "@s", "objective": "fzsd.module.interactor.trigger"}}]

execute if score @s fzsd.module.interactor.trigger matches 900 run tag @s add fzsd.ignore_interactor_headup_sneak
execute if score @s fzsd.module.interactor.trigger matches 910 run tag @s remove fzsd.ignore_interactor_headup_sneak