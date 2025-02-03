# 調用者：tags\functions\module\phantom_warning\send_phantom_warning.json
## 對當前玩家發送提醒
execute if score fzsd.logger.level fzsd.variable.integer matches ..600 if data storage fzsd:perm {phantom_warning:1} if entity @s[tag=fzsd.admin] run tellraw @s [{"nbt": "fzsd.level.alert", "interpret": true, "storage": "fzsd:logger"}, {"text": "今晚你的位置將可能會生成夜魅，建議睡覺！"}]
execute if score fzsd.logger.level fzsd.variable.integer matches ..600 unless data storage fzsd:perm {phantom_warning:1} run tellraw @s [{"nbt": "fzsd.level.alert", "interpret": true, "storage": "fzsd:logger"}, {"text": "今晚你的位置將可能會生成夜魅，建議睡覺！"}]

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "事件已觸發：向玩家"}, {"selector": "@s"}, {"text": "發送夜魅預警"}]
