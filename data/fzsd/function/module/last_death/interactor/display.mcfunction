execute if data storage fzsd:install fzsd.module{last_death:1b} if data storage fzsd:perm {last_death:1} if entity @s[tag=fzsd.admin] run tellraw @s [{"text": "取得上一個死亡點："},[{"text": "[", "color": "dark_gray", "hoverEvent": {"action": "show_text", "value": "發送給自己"}, "clickEvent": {"action": "run_command", "value": "/trigger fzsd.module.interactor.trigger set -2100"}},{"text": "私訊給自己", "color": "aqua"},{"text": "]"}]]
execute if data storage fzsd:install fzsd.module{last_death:1b} unless data storage fzsd:perm {last_death:1} run tellraw @s [{"text": "取得上一個死亡點："},[{"text": "[", "color": "dark_gray", "hoverEvent": {"action": "show_text", "value": "發送給自己"}, "clickEvent": {"action": "run_command", "value": "/trigger fzsd.module.interactor.trigger set -2100"}},{"text": "私訊給自己", "color": "aqua"},{"text": "]"}]]
