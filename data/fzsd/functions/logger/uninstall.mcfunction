## 調用者：#fzsd:logger/uninstall

## 偵錯
execute if score fzsd.logger.level fzsd.variable.integer matches ..400 run tellraw @a [{"nbt": "fzsd.level.debug", "interpret": true, "storage": "fzsd:logger"}, {"text": "已解除安裝系統擴展：日誌等級"}]

## 詢問是否清除數據
execute if score fzsd.logger.level fzsd.variable.integer matches ..600 run tellraw @s [{"nbt": "fzsd.level.alert", "interpret": true, "storage": "fzsd:logger"}, {"text": "您要刪除日誌配置嗎，它將會永久失去！ (真的很久！)"}, {"text": "[確定]", "color": "dark_red", "clickEvent": {"action": "suggest_command", "value": "/function #fzsd:logger/clear_data"}, "hoverEvent": {"action": "show_text", "contents": {"text": "將指令填入聊天框"}}}]