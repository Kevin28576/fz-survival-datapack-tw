## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "向玩家"}, {"selector": "@s"}, {"text": "顯示控制器"}]

execute if data storage fzsd:install fzsd.module{interactor:1b} run tellraw @s {"text": "控制器："}

execute if data storage fzsd:install fzsd.module{interactor:1b} if entity @s[tag=!fzsd.ignore_interactor_headup_sneak] run tellraw @s [{"text": "- 打開方式 “抬頭+蹲起”："}, [{"text": "[", "color": "dark_gray", "hoverEvent": {"action": "show_text", "value": "點擊關閉"}, "clickEvent": {"action": "run_command", "value": "/trigger fzsd.module.interactor.trigger set 900"}},{"text": "已啟用", "color": "green"},{"text": "]"}]]
execute if data storage fzsd:install fzsd.module{interactor:1b} if entity @s[tag=fzsd.ignore_interactor_headup_sneak] run tellraw @s [{"text": "- 打開方式 “抬頭+蹲起”："}, [{"text": "[", "color": "dark_gray", "hoverEvent": {"action": "show_text", "value": "點擊啟用"}, "clickEvent": {"action": "run_command", "value": "/trigger fzsd.module.interactor.trigger set 910"}},{"text": "已關閉", "color": "red"},{"text": "]"}]]